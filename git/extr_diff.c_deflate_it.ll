; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_deflate_it.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_deflate_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, i64, i64 }

@zlib_compression_level = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*)* @deflate_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @deflate_it(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* @zlib_compression_level, align 4
  %11 = call i32 @git_deflate_init(%struct.TYPE_6__* %9, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @git_deflate_bound(%struct.TYPE_6__* %9, i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @xmalloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %29, %3
  %25 = load i32, i32* @Z_FINISH, align 4
  %26 = call i64 @git_deflate(%struct.TYPE_6__* %9, i32 %25)
  %27 = load i64, i64* @Z_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %24

30:                                               ; preds = %24
  %31 = call i32 @git_deflate_end(%struct.TYPE_6__* %9)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** %8, align 8
  ret i8* %35
}

declare dso_local i32 @git_deflate_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_deflate_bound(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i64 @git_deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
