; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/os/extr_Bundle.c_J4AC_android_os_Bundle__putParcelableArrayList__withCString.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/os/extr_Bundle.c_J4AC_android_os_Bundle__putParcelableArrayList__withCString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (%struct.TYPE_7__**, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @J4AC_android_os_Bundle__putParcelableArrayList__withCString(%struct.TYPE_7__** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i8*)** %12, align 8
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* %13(%struct.TYPE_7__** %14, i8* %15)
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %18 = call i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %30

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @J4AC_android_os_Bundle__putParcelableArrayList(%struct.TYPE_7__** %25, i32 %26, i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %32 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__** %31, i32** %9)
  ret void
}

declare dso_local i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__**) #1

declare dso_local i32 @J4AC_android_os_Bundle__putParcelableArrayList(%struct.TYPE_7__**, i32, i32*, i32) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
