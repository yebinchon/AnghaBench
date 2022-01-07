; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_hashfd_throughput.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_hashfd_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.hashfile = type { i32, i32, i8*, i32, i64, %struct.progress*, i64, i64 }
%struct.progress = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashfile* @hashfd_throughput(i32 %0, i8* %1, %struct.progress* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.progress*, align 8
  %7 = alloca %struct.hashfile*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.progress* %2, %struct.progress** %6, align 8
  %8 = call %struct.hashfile* @xmalloc(i32 56)
  store %struct.hashfile* %8, %struct.hashfile** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %11 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %13 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %15 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %17 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.progress*, %struct.progress** %6, align 8
  %19 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %20 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %19, i32 0, i32 5
  store %struct.progress* %18, %struct.progress** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %23 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %25 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  %30 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %29, i32 0, i32 3
  %31 = call i32 %28(i32* %30)
  %32 = load %struct.hashfile*, %struct.hashfile** %7, align 8
  ret %struct.hashfile* %32
}

declare dso_local %struct.hashfile* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
