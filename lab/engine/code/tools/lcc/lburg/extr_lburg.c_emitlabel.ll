; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitlabel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [118 x i8] c"static void %Plabel(NODEPTR_TYPE a) {\0A%1int c;\0A%1struct %Pstate *p;\0A\0A%1if (!a)\0A%2fatal(\22%Plabel\22, \22Null tree\\n\22, 0);\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"%1STATE_LABEL(a) = p = allocate(sizeof *p, FUNC);\0A%1p->rule._stmt = 0;\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%1p->cost[%d] =\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%20x7fff;\0A%1switch (OP_LABEL(a)) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"%1default:\0A%2fatal(\22%Plabel\22, \22Bad terminal %%d\\n\22, OP_LABEL(a));\0A%1}\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @emitlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitlabel(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %18, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %11

21:                                               ; preds = %11
  %22 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  br label %24

24:                                               ; preds = %31, %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @emitcase(%struct.TYPE_4__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %8, align 8
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @emitcase(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
