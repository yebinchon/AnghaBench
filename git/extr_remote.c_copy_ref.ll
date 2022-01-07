; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_copy_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_copy_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, i8*, i8*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @copy_ref(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i64, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  %6 = load %struct.ref*, %struct.ref** %3, align 8
  %7 = icmp ne %struct.ref* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.ref* null, %struct.ref** %2, align 8
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.ref*, %struct.ref** %3, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @strlen(i32 %12)
  %14 = call i64 @st_add3(i32 40, i32 %13, i32 1)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.ref* @xmalloc(i64 %15)
  store %struct.ref* %16, %struct.ref** %4, align 8
  %17 = load %struct.ref*, %struct.ref** %4, align 8
  %18 = load %struct.ref*, %struct.ref** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @memcpy(%struct.ref* %17, %struct.ref* %18, i64 %19)
  %21 = load %struct.ref*, %struct.ref** %4, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.ref*, %struct.ref** %3, align 8
  %24 = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @xstrdup_or_null(i8* %25)
  %27 = load %struct.ref*, %struct.ref** %4, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ref*, %struct.ref** %3, align 8
  %30 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @xstrdup_or_null(i8* %31)
  %33 = load %struct.ref*, %struct.ref** %4, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ref*, %struct.ref** %3, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 0
  %37 = load %struct.ref*, %struct.ref** %36, align 8
  %38 = call %struct.ref* @copy_ref(%struct.ref* %37)
  %39 = load %struct.ref*, %struct.ref** %4, align 8
  %40 = getelementptr inbounds %struct.ref, %struct.ref* %39, i32 0, i32 0
  store %struct.ref* %38, %struct.ref** %40, align 8
  %41 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %41, %struct.ref** %2, align 8
  br label %42

42:                                               ; preds = %9, %8
  %43 = load %struct.ref*, %struct.ref** %2, align 8
  ret %struct.ref* %43
}

declare dso_local i64 @st_add3(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.ref* @xmalloc(i64) #1

declare dso_local i32 @memcpy(%struct.ref*, %struct.ref*, i64) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
