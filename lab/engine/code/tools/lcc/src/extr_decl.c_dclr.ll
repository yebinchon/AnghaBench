; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_dclr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_dclr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@Aflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"more than 32767 bytes in `%t'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*, i8**, i32**, i32)* @dclr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @dclr(%struct.TYPE_18__* %0, i8** %1, i32** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load i32**, i32*** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.TYPE_18__* @dclr1(i8** %10, i32** %11, i32 %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %9, align 8
  br label %14

14:                                               ; preds = %52, %4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %49 [
    i32 129, label %21
    i32 130, label %24
    i32 132, label %37
    i32 131, label %43
    i32 128, label %43
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call %struct.TYPE_18__* @ptr(%struct.TYPE_18__* %22)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %5, align 8
  br label %51

24:                                               ; preds = %17
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_18__* @func(%struct.TYPE_18__* %25, i32 %30, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %5, align 8
  br label %51

37:                                               ; preds = %17
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_18__* @array(%struct.TYPE_18__* %38, i32 %41, i32 0)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %5, align 8
  br label %51

43:                                               ; preds = %17, %17
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = call %struct.TYPE_18__* @qual(i32 %46, %struct.TYPE_18__* %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %5, align 8
  br label %51

49:                                               ; preds = %17
  %50 = call i32 @assert(i32 0)
  br label %51

51:                                               ; preds = %49, %43, %37, %24, %21
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %9, align 8
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* @Aflag, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 32767
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = call i32 @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %65)
  br label %67

67:                                               ; preds = %64, %59, %56
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %68
}

declare dso_local %struct.TYPE_18__* @dclr1(i8**, i32**, i32) #1

declare dso_local %struct.TYPE_18__* @ptr(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @func(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @array(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @qual(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @warning(i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
