; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_NewByteArray__asGlobalRef__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_NewByteArray__asGlobalRef__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (%struct.TYPE_7__**, i32*)*, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4A_NewByteArray__asGlobalRef__catchAll(%struct.TYPE_7__** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = bitcast {}** %10 to i32* (%struct.TYPE_7__**, i32)**
  %12 = load i32* (%struct.TYPE_7__**, i32)*, i32* (%struct.TYPE_7__**, i32)** %11, align 8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32* %12(%struct.TYPE_7__** %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %17 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_7__** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store i32* null, i32** %3, align 8
  br label %34

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32* (%struct.TYPE_7__**, i32*)*, i32* (%struct.TYPE_7__**, i32*)** %26, align 8
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* %27(%struct.TYPE_7__** %28, i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %32 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__** %31, i32** %6)
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_7__**) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
