; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_ClipHandleToModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_ClipHandleToModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CM_ClipHandleToModel: bad handle %i\00", align 1
@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BOX_MODEL_HANDLE = common dso_local global i64 0, align 8
@box_model = common dso_local global i32 0, align 4
@MAX_SUBMODELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"CM_ClipHandleToModel: bad handle %i < %i < %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CM_ClipHandleToModel(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @ERR_DROP, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 (i32, i8*, i64, ...) @Com_Error(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 1), align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %2, align 8
  br label %39

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @BOX_MODEL_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32* @box_model, i32** %2, align 8
  br label %39

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @MAX_SUBMODELS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @ERR_DROP, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @MAX_SUBMODELS, align 8
  %32 = call i32 (i32, i8*, i64, ...) @Com_Error(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @ERR_DROP, align 4
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @MAX_SUBMODELS, align 8
  %37 = add i64 %35, %36
  %38 = call i32 (i32, i8*, i64, ...) @Com_Error(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i32* null, i32** %2, align 8
  br label %39

39:                                               ; preds = %33, %22, %14
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32 @Com_Error(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
