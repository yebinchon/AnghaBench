; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_operand.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, i32, %struct.operand, i8*, i8*, i32, %struct.operand* }
%struct.operand = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@ByteOp = common dso_local global i32 0, align 4
@BitOp = common dso_local global i32 0, align 4
@OP_REG = common dso_local global i8* null, align 8
@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@OP_NONE = common dso_local global i8* null, align 8
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@OP_MEM = common dso_local global i8* null, align 8
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i8* null, align 8
@OP_IMM = common dso_local global i8* null, align 8
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.operand*, i32)* @decode_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_operand(%struct.x86_emulate_ctxt* %0, %struct.operand* %1, i32 %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.operand* %1, %struct.operand** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %450 [
    i32 131, label %10
    i32 140, label %14
    i32 138, label %18
    i32 135, label %59
    i32 157, label %69
    i32 155, label %101
    i32 156, label %133
    i32 152, label %166
    i32 150, label %201
    i32 154, label %215
    i32 144, label %227
    i32 132, label %231
    i32 146, label %239
    i32 145, label %245
    i32 134, label %252
    i32 137, label %276
    i32 136, label %280
    i32 141, label %284
    i32 142, label %288
    i32 130, label %294
    i32 128, label %331
    i32 143, label %373
    i32 133, label %398
    i32 149, label %406
    i32 153, label %414
    i32 129, label %421
    i32 151, label %428
    i32 148, label %435
    i32 147, label %442
    i32 139, label %449
  ]

10:                                               ; preds = %3
  %11 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %12 = load %struct.operand*, %struct.operand** %5, align 8
  %13 = call i32 @decode_register_operand(%struct.x86_emulate_ctxt* %11, %struct.operand* %12)
  br label %454

14:                                               ; preds = %3
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %16 = load %struct.operand*, %struct.operand** %5, align 8
  %17 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %15, %struct.operand* %16, i32 1, i32 0)
  store i32 %17, i32* %7, align 4
  br label %454

18:                                               ; preds = %3
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ByteOp, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %28 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 1, %25 ], [ %29, %26 ]
  %32 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %33 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.operand, %struct.operand* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %398, %280, %276, %275, %59, %30
  %36 = load %struct.operand*, %struct.operand** %5, align 8
  %37 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %38 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %37, i32 0, i32 2
  %39 = bitcast %struct.operand* %36 to i8*
  %40 = bitcast %struct.operand* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 56, i1 false)
  %41 = load %struct.operand*, %struct.operand** %5, align 8
  %42 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %43 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %42, i32 0, i32 6
  store %struct.operand* %41, %struct.operand** %43, align 8
  %44 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %45 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BitOp, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %52 = call i32 @fetch_bit_operand(%struct.x86_emulate_ctxt* %51)
  br label %53

53:                                               ; preds = %50, %35
  %54 = load %struct.operand*, %struct.operand** %5, align 8
  %55 = getelementptr inbounds %struct.operand, %struct.operand* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.operand*, %struct.operand** %5, align 8
  %58 = getelementptr inbounds %struct.operand, %struct.operand* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %454

59:                                               ; preds = %3
  %60 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %61 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 8
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 16, i32 8
  %66 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %67 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.operand, %struct.operand* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %35

69:                                               ; preds = %3
  %70 = load i8*, i8** @OP_REG, align 8
  %71 = load %struct.operand*, %struct.operand** %5, align 8
  %72 = getelementptr inbounds %struct.operand, %struct.operand* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %74 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ByteOp, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %84

80:                                               ; preds = %69
  %81 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %82 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = phi i32 [ 1, %79 ], [ %83, %80 ]
  %86 = load %struct.operand*, %struct.operand** %5, align 8
  %87 = getelementptr inbounds %struct.operand, %struct.operand* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %89 = load i32, i32* @VCPU_REGS_RAX, align 4
  %90 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %88, i32 %89)
  %91 = load %struct.operand*, %struct.operand** %5, align 8
  %92 = getelementptr inbounds %struct.operand, %struct.operand* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.operand*, %struct.operand** %5, align 8
  %95 = call i32 @fetch_register_operand(%struct.operand* %94)
  %96 = load %struct.operand*, %struct.operand** %5, align 8
  %97 = getelementptr inbounds %struct.operand, %struct.operand* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.operand*, %struct.operand** %5, align 8
  %100 = getelementptr inbounds %struct.operand, %struct.operand* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %454

101:                                              ; preds = %3
  %102 = load i8*, i8** @OP_REG, align 8
  %103 = load %struct.operand*, %struct.operand** %5, align 8
  %104 = getelementptr inbounds %struct.operand, %struct.operand* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %106 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ByteOp, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %116

112:                                              ; preds = %101
  %113 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %114 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i32 [ 2, %111 ], [ %115, %112 ]
  %118 = load %struct.operand*, %struct.operand** %5, align 8
  %119 = getelementptr inbounds %struct.operand, %struct.operand* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %121 = load i32, i32* @VCPU_REGS_RAX, align 4
  %122 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %120, i32 %121)
  %123 = load %struct.operand*, %struct.operand** %5, align 8
  %124 = getelementptr inbounds %struct.operand, %struct.operand* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load %struct.operand*, %struct.operand** %5, align 8
  %127 = call i32 @fetch_register_operand(%struct.operand* %126)
  %128 = load %struct.operand*, %struct.operand** %5, align 8
  %129 = getelementptr inbounds %struct.operand, %struct.operand* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.operand*, %struct.operand** %5, align 8
  %132 = getelementptr inbounds %struct.operand, %struct.operand* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %454

133:                                              ; preds = %3
  %134 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %135 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ByteOp, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i8*, i8** @OP_NONE, align 8
  %142 = load %struct.operand*, %struct.operand** %5, align 8
  %143 = getelementptr inbounds %struct.operand, %struct.operand* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %454

144:                                              ; preds = %133
  %145 = load i8*, i8** @OP_REG, align 8
  %146 = load %struct.operand*, %struct.operand** %5, align 8
  %147 = getelementptr inbounds %struct.operand, %struct.operand* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %149 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.operand*, %struct.operand** %5, align 8
  %152 = getelementptr inbounds %struct.operand, %struct.operand* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %154 = load i32, i32* @VCPU_REGS_RDX, align 4
  %155 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %153, i32 %154)
  %156 = load %struct.operand*, %struct.operand** %5, align 8
  %157 = getelementptr inbounds %struct.operand, %struct.operand* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  %159 = load %struct.operand*, %struct.operand** %5, align 8
  %160 = call i32 @fetch_register_operand(%struct.operand* %159)
  %161 = load %struct.operand*, %struct.operand** %5, align 8
  %162 = getelementptr inbounds %struct.operand, %struct.operand* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.operand*, %struct.operand** %5, align 8
  %165 = getelementptr inbounds %struct.operand, %struct.operand* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %454

166:                                              ; preds = %3
  %167 = load i8*, i8** @OP_MEM, align 8
  %168 = load %struct.operand*, %struct.operand** %5, align 8
  %169 = getelementptr inbounds %struct.operand, %struct.operand* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %171 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ByteOp, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  br label %181

177:                                              ; preds = %166
  %178 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %179 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  br label %181

181:                                              ; preds = %177, %176
  %182 = phi i32 [ 1, %176 ], [ %180, %177 ]
  %183 = load %struct.operand*, %struct.operand** %5, align 8
  %184 = getelementptr inbounds %struct.operand, %struct.operand* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %186 = load i32, i32* @VCPU_REGS_RDI, align 4
  %187 = call i8* @register_address(%struct.x86_emulate_ctxt* %185, i32 %186)
  %188 = load %struct.operand*, %struct.operand** %5, align 8
  %189 = getelementptr inbounds %struct.operand, %struct.operand* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i8* %187, i8** %191, align 8
  %192 = load i8*, i8** @VCPU_SREG_ES, align 8
  %193 = load %struct.operand*, %struct.operand** %5, align 8
  %194 = getelementptr inbounds %struct.operand, %struct.operand* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i8* %192, i8** %196, align 8
  %197 = load %struct.operand*, %struct.operand** %5, align 8
  %198 = getelementptr inbounds %struct.operand, %struct.operand* %197, i32 0, i32 2
  store i32 0, i32* %198, align 8
  %199 = load %struct.operand*, %struct.operand** %5, align 8
  %200 = getelementptr inbounds %struct.operand, %struct.operand* %199, i32 0, i32 4
  store i32 1, i32* %200, align 8
  br label %454

201:                                              ; preds = %3
  %202 = load i8*, i8** @OP_REG, align 8
  %203 = load %struct.operand*, %struct.operand** %5, align 8
  %204 = getelementptr inbounds %struct.operand, %struct.operand* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load %struct.operand*, %struct.operand** %5, align 8
  %206 = getelementptr inbounds %struct.operand, %struct.operand* %205, i32 0, i32 0
  store i32 2, i32* %206, align 8
  %207 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %208 = load i32, i32* @VCPU_REGS_RDX, align 4
  %209 = call i8* @reg_rmw(%struct.x86_emulate_ctxt* %207, i32 %208)
  %210 = load %struct.operand*, %struct.operand** %5, align 8
  %211 = getelementptr inbounds %struct.operand, %struct.operand* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  %213 = load %struct.operand*, %struct.operand** %5, align 8
  %214 = call i32 @fetch_register_operand(%struct.operand* %213)
  br label %454

215:                                              ; preds = %3
  %216 = load i8*, i8** @OP_IMM, align 8
  %217 = load %struct.operand*, %struct.operand** %5, align 8
  %218 = getelementptr inbounds %struct.operand, %struct.operand* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  %219 = load %struct.operand*, %struct.operand** %5, align 8
  %220 = getelementptr inbounds %struct.operand, %struct.operand* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %222 = load i32, i32* @VCPU_REGS_RCX, align 4
  %223 = call i32 @reg_read(%struct.x86_emulate_ctxt* %221, i32 %222)
  %224 = and i32 %223, 255
  %225 = load %struct.operand*, %struct.operand** %5, align 8
  %226 = getelementptr inbounds %struct.operand, %struct.operand* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %454

227:                                              ; preds = %3
  %228 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %229 = load %struct.operand*, %struct.operand** %5, align 8
  %230 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %228, %struct.operand* %229, i32 1, i32 1)
  store i32 %230, i32* %7, align 4
  br label %454

231:                                              ; preds = %3
  %232 = load i8*, i8** @OP_IMM, align 8
  %233 = load %struct.operand*, %struct.operand** %5, align 8
  %234 = getelementptr inbounds %struct.operand, %struct.operand* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %struct.operand*, %struct.operand** %5, align 8
  %236 = getelementptr inbounds %struct.operand, %struct.operand* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  %237 = load %struct.operand*, %struct.operand** %5, align 8
  %238 = getelementptr inbounds %struct.operand, %struct.operand* %237, i32 0, i32 2
  store i32 1, i32* %238, align 8
  br label %454

239:                                              ; preds = %3
  %240 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %241 = load %struct.operand*, %struct.operand** %5, align 8
  %242 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %243 = call i32 @imm_size(%struct.x86_emulate_ctxt* %242)
  %244 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %240, %struct.operand* %241, i32 %243, i32 1)
  store i32 %244, i32* %7, align 4
  br label %454

245:                                              ; preds = %3
  %246 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %247 = load %struct.operand*, %struct.operand** %5, align 8
  %248 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %249 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %246, %struct.operand* %247, i32 %250, i32 1)
  store i32 %251, i32* %7, align 4
  br label %454

252:                                              ; preds = %3
  %253 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %254 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.operand, %struct.operand* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  %256 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %257 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.operand, %struct.operand* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** @OP_REG, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %252
  %263 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %264 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %265 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = call i8* @decode_register(%struct.x86_emulate_ctxt* %263, i32 %266, i32 1)
  %268 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %269 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.operand, %struct.operand* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  store i8* %267, i8** %271, align 8
  %272 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %273 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %272, i32 0, i32 2
  %274 = call i32 @fetch_register_operand(%struct.operand* %273)
  br label %275

275:                                              ; preds = %262, %252
  br label %35

276:                                              ; preds = %3
  %277 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %278 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.operand, %struct.operand* %278, i32 0, i32 0
  store i32 2, i32* %279, align 8
  br label %35

280:                                              ; preds = %3
  %281 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %282 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.operand, %struct.operand* %282, i32 0, i32 0
  store i32 4, i32* %283, align 8
  br label %35

284:                                              ; preds = %3
  %285 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %286 = load %struct.operand*, %struct.operand** %5, align 8
  %287 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %285, %struct.operand* %286, i32 2, i32 0)
  store i32 %287, i32* %7, align 4
  br label %454

288:                                              ; preds = %3
  %289 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %290 = load %struct.operand*, %struct.operand** %5, align 8
  %291 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %292 = call i32 @imm_size(%struct.x86_emulate_ctxt* %291)
  %293 = call i32 @decode_imm(%struct.x86_emulate_ctxt* %289, %struct.operand* %290, i32 %292, i32 0)
  store i32 %293, i32* %7, align 4
  br label %454

294:                                              ; preds = %3
  %295 = load i8*, i8** @OP_MEM, align 8
  %296 = load %struct.operand*, %struct.operand** %5, align 8
  %297 = getelementptr inbounds %struct.operand, %struct.operand* %296, i32 0, i32 3
  store i8* %295, i8** %297, align 8
  %298 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %299 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @ByteOp, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %294
  br label %309

305:                                              ; preds = %294
  %306 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %307 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  br label %309

309:                                              ; preds = %305, %304
  %310 = phi i32 [ 1, %304 ], [ %308, %305 ]
  %311 = load %struct.operand*, %struct.operand** %5, align 8
  %312 = getelementptr inbounds %struct.operand, %struct.operand* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  %313 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %314 = load i32, i32* @VCPU_REGS_RSI, align 4
  %315 = call i8* @register_address(%struct.x86_emulate_ctxt* %313, i32 %314)
  %316 = load %struct.operand*, %struct.operand** %5, align 8
  %317 = getelementptr inbounds %struct.operand, %struct.operand* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  store i8* %315, i8** %319, align 8
  %320 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %321 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %320, i32 0, i32 4
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.operand*, %struct.operand** %5, align 8
  %324 = getelementptr inbounds %struct.operand, %struct.operand* %323, i32 0, i32 6
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 1
  store i8* %322, i8** %326, align 8
  %327 = load %struct.operand*, %struct.operand** %5, align 8
  %328 = getelementptr inbounds %struct.operand, %struct.operand* %327, i32 0, i32 2
  store i32 0, i32* %328, align 8
  %329 = load %struct.operand*, %struct.operand** %5, align 8
  %330 = getelementptr inbounds %struct.operand, %struct.operand* %329, i32 0, i32 4
  store i32 1, i32* %330, align 8
  br label %454

331:                                              ; preds = %3
  %332 = load i8*, i8** @OP_MEM, align 8
  %333 = load %struct.operand*, %struct.operand** %5, align 8
  %334 = getelementptr inbounds %struct.operand, %struct.operand* %333, i32 0, i32 3
  store i8* %332, i8** %334, align 8
  %335 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %336 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @ByteOp, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %331
  br label %346

342:                                              ; preds = %331
  %343 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %344 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  br label %346

346:                                              ; preds = %342, %341
  %347 = phi i32 [ 1, %341 ], [ %345, %342 ]
  %348 = load %struct.operand*, %struct.operand** %5, align 8
  %349 = getelementptr inbounds %struct.operand, %struct.operand* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 8
  %350 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %351 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %352 = load i32, i32* @VCPU_REGS_RBX, align 4
  %353 = call i32 @reg_read(%struct.x86_emulate_ctxt* %351, i32 %352)
  %354 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %355 = load i32, i32* @VCPU_REGS_RAX, align 4
  %356 = call i32 @reg_read(%struct.x86_emulate_ctxt* %354, i32 %355)
  %357 = and i32 %356, 255
  %358 = add nsw i32 %353, %357
  %359 = call i8* @address_mask(%struct.x86_emulate_ctxt* %350, i32 %358)
  %360 = load %struct.operand*, %struct.operand** %5, align 8
  %361 = getelementptr inbounds %struct.operand, %struct.operand* %360, i32 0, i32 6
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 0
  store i8* %359, i8** %363, align 8
  %364 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %365 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %364, i32 0, i32 4
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.operand*, %struct.operand** %5, align 8
  %368 = getelementptr inbounds %struct.operand, %struct.operand* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 1
  store i8* %366, i8** %370, align 8
  %371 = load %struct.operand*, %struct.operand** %5, align 8
  %372 = getelementptr inbounds %struct.operand, %struct.operand* %371, i32 0, i32 2
  store i32 0, i32* %372, align 8
  br label %454

373:                                              ; preds = %3
  %374 = load i8*, i8** @OP_IMM, align 8
  %375 = load %struct.operand*, %struct.operand** %5, align 8
  %376 = getelementptr inbounds %struct.operand, %struct.operand* %375, i32 0, i32 3
  store i8* %374, i8** %376, align 8
  %377 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %378 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %377, i32 0, i32 3
  %379 = load i8*, i8** %378, align 8
  %380 = load %struct.operand*, %struct.operand** %5, align 8
  %381 = getelementptr inbounds %struct.operand, %struct.operand* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 0
  store i8* %379, i8** %383, align 8
  %384 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %385 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %386, 2
  %388 = load %struct.operand*, %struct.operand** %5, align 8
  %389 = getelementptr inbounds %struct.operand, %struct.operand* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  %390 = load %struct.operand*, %struct.operand** %5, align 8
  %391 = getelementptr inbounds %struct.operand, %struct.operand* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.operand*, %struct.operand** %5, align 8
  %394 = getelementptr inbounds %struct.operand, %struct.operand* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %397 = call i32 @insn_fetch_arr(i32 %392, i32 %395, %struct.x86_emulate_ctxt* %396)
  br label %454

398:                                              ; preds = %3
  %399 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %400 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 2
  %403 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %404 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.operand, %struct.operand* %404, i32 0, i32 0
  store i32 %402, i32* %405, align 8
  br label %35

406:                                              ; preds = %3
  %407 = load i8*, i8** @OP_IMM, align 8
  %408 = load %struct.operand*, %struct.operand** %5, align 8
  %409 = getelementptr inbounds %struct.operand, %struct.operand* %408, i32 0, i32 3
  store i8* %407, i8** %409, align 8
  %410 = load i8*, i8** @VCPU_SREG_ES, align 8
  %411 = ptrtoint i8* %410 to i32
  %412 = load %struct.operand*, %struct.operand** %5, align 8
  %413 = getelementptr inbounds %struct.operand, %struct.operand* %412, i32 0, i32 2
  store i32 %411, i32* %413, align 8
  br label %454

414:                                              ; preds = %3
  %415 = load i8*, i8** @OP_IMM, align 8
  %416 = load %struct.operand*, %struct.operand** %5, align 8
  %417 = getelementptr inbounds %struct.operand, %struct.operand* %416, i32 0, i32 3
  store i8* %415, i8** %417, align 8
  %418 = load i32, i32* @VCPU_SREG_CS, align 4
  %419 = load %struct.operand*, %struct.operand** %5, align 8
  %420 = getelementptr inbounds %struct.operand, %struct.operand* %419, i32 0, i32 2
  store i32 %418, i32* %420, align 8
  br label %454

421:                                              ; preds = %3
  %422 = load i8*, i8** @OP_IMM, align 8
  %423 = load %struct.operand*, %struct.operand** %5, align 8
  %424 = getelementptr inbounds %struct.operand, %struct.operand* %423, i32 0, i32 3
  store i8* %422, i8** %424, align 8
  %425 = load i32, i32* @VCPU_SREG_SS, align 4
  %426 = load %struct.operand*, %struct.operand** %5, align 8
  %427 = getelementptr inbounds %struct.operand, %struct.operand* %426, i32 0, i32 2
  store i32 %425, i32* %427, align 8
  br label %454

428:                                              ; preds = %3
  %429 = load i8*, i8** @OP_IMM, align 8
  %430 = load %struct.operand*, %struct.operand** %5, align 8
  %431 = getelementptr inbounds %struct.operand, %struct.operand* %430, i32 0, i32 3
  store i8* %429, i8** %431, align 8
  %432 = load i32, i32* @VCPU_SREG_DS, align 4
  %433 = load %struct.operand*, %struct.operand** %5, align 8
  %434 = getelementptr inbounds %struct.operand, %struct.operand* %433, i32 0, i32 2
  store i32 %432, i32* %434, align 8
  br label %454

435:                                              ; preds = %3
  %436 = load i8*, i8** @OP_IMM, align 8
  %437 = load %struct.operand*, %struct.operand** %5, align 8
  %438 = getelementptr inbounds %struct.operand, %struct.operand* %437, i32 0, i32 3
  store i8* %436, i8** %438, align 8
  %439 = load i32, i32* @VCPU_SREG_FS, align 4
  %440 = load %struct.operand*, %struct.operand** %5, align 8
  %441 = getelementptr inbounds %struct.operand, %struct.operand* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  br label %454

442:                                              ; preds = %3
  %443 = load i8*, i8** @OP_IMM, align 8
  %444 = load %struct.operand*, %struct.operand** %5, align 8
  %445 = getelementptr inbounds %struct.operand, %struct.operand* %444, i32 0, i32 3
  store i8* %443, i8** %445, align 8
  %446 = load i32, i32* @VCPU_SREG_GS, align 4
  %447 = load %struct.operand*, %struct.operand** %5, align 8
  %448 = getelementptr inbounds %struct.operand, %struct.operand* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 8
  br label %454

449:                                              ; preds = %3
  br label %450

450:                                              ; preds = %3, %449
  %451 = load i8*, i8** @OP_NONE, align 8
  %452 = load %struct.operand*, %struct.operand** %5, align 8
  %453 = getelementptr inbounds %struct.operand, %struct.operand* %452, i32 0, i32 3
  store i8* %451, i8** %453, align 8
  br label %454

454:                                              ; preds = %450, %442, %435, %428, %421, %414, %406, %373, %346, %309, %288, %284, %245, %239, %231, %227, %215, %201, %181, %144, %140, %116, %84, %53, %14, %10
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %7, align 4
  ret i32 %456
}

declare dso_local i32 @decode_register_operand(%struct.x86_emulate_ctxt*, %struct.operand*) #1

declare dso_local i32 @decode_imm(%struct.x86_emulate_ctxt*, %struct.operand*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fetch_bit_operand(%struct.x86_emulate_ctxt*) #1

declare dso_local i8* @reg_rmw(%struct.x86_emulate_ctxt*, i32) #1

declare dso_local i32 @fetch_register_operand(%struct.operand*) #1

declare dso_local i8* @register_address(%struct.x86_emulate_ctxt*, i32) #1

declare dso_local i32 @reg_read(%struct.x86_emulate_ctxt*, i32) #1

declare dso_local i32 @imm_size(%struct.x86_emulate_ctxt*) #1

declare dso_local i8* @decode_register(%struct.x86_emulate_ctxt*, i32, i32) #1

declare dso_local i8* @address_mask(%struct.x86_emulate_ctxt*, i32) #1

declare dso_local i32 @insn_fetch_arr(i32, i32, %struct.x86_emulate_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
