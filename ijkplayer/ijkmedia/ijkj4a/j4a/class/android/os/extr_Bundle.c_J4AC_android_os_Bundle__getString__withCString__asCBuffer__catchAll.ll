; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/os/extr_Bundle.c_J4AC_android_os_Bundle__getString__withCString__asCBuffer__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/os/extr_Bundle.c_J4AC_android_os_Bundle__getString__withCString__asCBuffer__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* (%struct.TYPE_8__**, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @J4AC_android_os_Bundle__getString__withCString__asCBuffer__catchAll(%struct.TYPE_8__** %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @J4AC_android_os_Bundle__getString__withCString__catchAll(%struct.TYPE_8__** %14, i32 %15, i8* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %19 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %5
  br label %46

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8* (%struct.TYPE_8__**, i32, i32*)*, i8* (%struct.TYPE_8__**, i32, i32*)** %28, align 8
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i8* %29(%struct.TYPE_8__** %30, i32 %31, i32* null)
  store i8* %32, i8** %12, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %34 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__** %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %25
  br label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @strlcpy(i8* %41, i8* %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %40, %39, %24
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @J4A_ReleaseStringUTFChars__p(%struct.TYPE_8__** %47, i32 %48, i8** %12)
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %51 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_8__** %50, i32* %13)
  %52 = load i8*, i8** %11, align 8
  ret i8* %52
}

declare dso_local i32 @J4AC_android_os_Bundle__getString__withCString__catchAll(%struct.TYPE_8__**, i32, i8*) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @J4A_ReleaseStringUTFChars__p(%struct.TYPE_8__**, i32, i8**) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_8__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
