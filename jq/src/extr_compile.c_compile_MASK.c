#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct opcode_description {int length; int flags; } ;
struct locfile {int dummy; } ;
struct bytecode {int nsubfunctions; int codelen; int* code; int nlocals; void* constants; struct bytecode** subfunctions; void* debuginfo; scalar_t__ nclosures; struct bytecode* parent; TYPE_1__* globals; } ;
typedef  void* jv ;
struct TYPE_17__ {int intval; TYPE_3__* target; void* constant; int /*<<< orphan*/ * cfunc; } ;
struct TYPE_15__ {TYPE_5__* first; } ;
struct TYPE_19__ {TYPE_5__* first; TYPE_5__* last; } ;
struct TYPE_18__ {scalar_t__ op; int bytecode_pos; char* symbol; TYPE_4__ imm; struct TYPE_18__* bound_by; struct TYPE_18__* next; TYPE_2__ arglist; TYPE_6__ subfn; struct bytecode* compiled; } ;
typedef  TYPE_5__ inst ;
typedef  TYPE_6__ block ;
struct TYPE_16__ {int bytecode_pos; } ;
struct TYPE_14__ {int /*<<< orphan*/ * cfunctions; void* cfunc_names; int /*<<< orphan*/  ncfunctions; } ;

/* Variables and functions */
 int ARG_NEWCLOSURE ; 
 TYPE_6__ FUNC0 (TYPE_6__,int /*<<< orphan*/ ) ; 
 scalar_t__ CALL_BUILTIN ; 
 scalar_t__ CALL_JQ ; 
 scalar_t__ CLOSURE_CREATE ; 
 scalar_t__ CLOSURE_CREATE_C ; 
 scalar_t__ CLOSURE_PARAM ; 
 scalar_t__ CLOSURE_REF ; 
 int OP_HAS_BRANCH ; 
 int OP_HAS_CONSTANT ; 
 int OP_HAS_VARIABLE ; 
 int /*<<< orphan*/  RET ; 
 int /*<<< orphan*/  UNKNOWN_LOCATION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__) ; 
 scalar_t__ FUNC3 (TYPE_6__*,void*,void**) ; 
 TYPE_6__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 () ; 
 void* FUNC7 (void*,void*) ; 
 int FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 
 struct bytecode* FUNC10 (int) ; 
 void* FUNC11 (int,int) ; 
 void* FUNC12 () ; 
 void* FUNC13 (void*,void*,void*) ; 
 void* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct locfile*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 (struct bytecode*,TYPE_5__*) ; 
 struct opcode_description* FUNC17 (scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct bytecode* bc, block b, struct locfile* lf, jv args, jv *env) {
  int errors = 0;
  int pos = 0;
  int var_frame_idx = 0;
  bc->nsubfunctions = 0;
  errors += FUNC3(&b, args, env);
  b = FUNC0(b, FUNC5(RET));
  jv localnames = FUNC6();
  for (inst* curr = b.first; curr; curr = curr->next) {
    if (!curr->next) FUNC1(curr == b.last);
    int length = FUNC17(curr->op)->length;
    if (curr->op == CALL_JQ) {
      for (inst* arg = curr->arglist.first; arg; arg = arg->next) {
        length += 2;
      }
    }
    pos += length;
    curr->bytecode_pos = pos;
    curr->compiled = bc;

    FUNC1(curr->op != CLOSURE_REF && curr->op != CLOSURE_PARAM);

    if ((FUNC17(curr->op)->flags & OP_HAS_VARIABLE) &&
        curr->bound_by == curr) {
      curr->imm.intval = var_frame_idx++;
      localnames = FUNC7(localnames, FUNC14(curr->symbol));
    }

    if (curr->op == CLOSURE_CREATE) {
      FUNC1(curr->bound_by == curr);
      curr->imm.intval = bc->nsubfunctions++;
    }
    if (curr->op == CLOSURE_CREATE_C) {
      FUNC1(curr->bound_by == curr);
      int idx = bc->globals->ncfunctions++;
      bc->globals->cfunc_names = FUNC7(bc->globals->cfunc_names,
                                                 FUNC14(curr->symbol));
      bc->globals->cfunctions[idx] = *curr->imm.cfunc;
      curr->imm.intval = idx;
    }
  }
  if (pos > 0xFFFF) {
    // too long for program counter to fit in uint16_t
    FUNC15(lf, UNKNOWN_LOCATION,
        "function compiled to %d bytes which is too long", pos);
    errors++;
  }
  bc->codelen = pos;
  bc->debuginfo = FUNC13(bc->debuginfo, FUNC14("locals"), localnames);
  if (bc->nsubfunctions) {
    bc->subfunctions = FUNC11(sizeof(struct bytecode*), bc->nsubfunctions);
    for (inst* curr = b.first; curr; curr = curr->next) {
      if (curr->op == CLOSURE_CREATE) {
        struct bytecode* subfn = FUNC10(sizeof(struct bytecode));
        bc->subfunctions[curr->imm.intval] = subfn;
        subfn->globals = bc->globals;
        subfn->parent = bc;
        subfn->nclosures = 0;
        subfn->debuginfo = FUNC13(FUNC12(), FUNC14("name"), FUNC14(curr->symbol));
        jv params = FUNC6();
        for (inst* param = curr->arglist.first; param; param = param->next) {
          FUNC1(param->op == CLOSURE_PARAM);
          FUNC1(param->bound_by == param);
          param->imm.intval = subfn->nclosures++;
          param->compiled = subfn;
          params = FUNC7(params, FUNC14(param->symbol));
        }
        subfn->debuginfo = FUNC13(subfn->debuginfo, FUNC14("params"), params);
        errors += FUNC18(subfn, curr->subfn, lf, args, env);
        curr->subfn = FUNC4();
      }
    }
  } else {
    bc->subfunctions = 0;
  }
  uint16_t* code = FUNC11(sizeof(uint16_t), bc->codelen);
  bc->code = code;
  pos = 0;
  jv constant_pool = FUNC6();
  int maxvar = -1;
  if (!errors) for (inst* curr = b.first; curr; curr = curr->next) {
    const struct opcode_description* op = FUNC17(curr->op);
    if (op->length == 0)
      continue;
    code[pos++] = curr->op;
    FUNC1(curr->op != CLOSURE_REF && curr->op != CLOSURE_PARAM);
    if (curr->op == CALL_BUILTIN) {
      FUNC1(curr->bound_by->op == CLOSURE_CREATE_C);
      FUNC1(!curr->arglist.first);
      code[pos++] = (uint16_t)curr->imm.intval;
      code[pos++] = curr->bound_by->imm.intval;
    } else if (curr->op == CALL_JQ) {
      FUNC1(curr->bound_by->op == CLOSURE_CREATE ||
             curr->bound_by->op == CLOSURE_PARAM);
      code[pos++] = (uint16_t)curr->imm.intval;
      code[pos++] = FUNC16(bc, curr->bound_by);
      code[pos++] = curr->bound_by->imm.intval |
        (curr->bound_by->op == CLOSURE_CREATE ? ARG_NEWCLOSURE : 0);
      for (inst* arg = curr->arglist.first; arg; arg = arg->next) {
        FUNC1(arg->op == CLOSURE_REF && arg->bound_by->op == CLOSURE_CREATE);
        code[pos++] = FUNC16(bc, arg->bound_by);
        code[pos++] = arg->bound_by->imm.intval | ARG_NEWCLOSURE;
      }
    } else if ((op->flags & OP_HAS_CONSTANT) && (op->flags & OP_HAS_VARIABLE)) {
      // STORE_GLOBAL: constant global, basically
      code[pos++] = FUNC8(FUNC9(constant_pool));
      constant_pool = FUNC7(constant_pool, FUNC9(curr->imm.constant));
      code[pos++] = FUNC16(bc, curr->bound_by);
      uint16_t var = (uint16_t)curr->bound_by->imm.intval;
      code[pos++] = var;
    } else if (op->flags & OP_HAS_CONSTANT) {
      code[pos++] = FUNC8(FUNC9(constant_pool));
      constant_pool = FUNC7(constant_pool, FUNC9(curr->imm.constant));
    } else if (op->flags & OP_HAS_VARIABLE) {
      code[pos++] = FUNC16(bc, curr->bound_by);
      uint16_t var = (uint16_t)curr->bound_by->imm.intval;
      code[pos++] = var;
      if (var > maxvar) maxvar = var;
    } else if (op->flags & OP_HAS_BRANCH) {
      FUNC1(curr->imm.target->bytecode_pos != -1);
      FUNC1(curr->imm.target->bytecode_pos > pos); // only forward branches
      code[pos] = curr->imm.target->bytecode_pos - (pos + 1);
      pos++;
    } else if (op->length > 1) {
      FUNC1(0 && "codegen not implemented for this operation");
    }
  }
  bc->constants = constant_pool;
  bc->nlocals = maxvar + 2; // FIXME: frames of size zero?
  FUNC2(b);
  return errors;
}