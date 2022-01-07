; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_ref_cache.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_ref_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_cache = type { i32, i32*, %struct.ref_store* }
%struct.ref_store = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_cache* @create_ref_cache(%struct.ref_store* %0, i32* %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ref_cache*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call %struct.ref_cache* @xcalloc(i32 1, i32 24)
  store %struct.ref_cache* %6, %struct.ref_cache** %5, align 8
  %7 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %8 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %9 = getelementptr inbounds %struct.ref_cache, %struct.ref_cache* %8, i32 0, i32 2
  store %struct.ref_store* %7, %struct.ref_store** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %12 = getelementptr inbounds %struct.ref_cache, %struct.ref_cache* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %14 = call i32 @create_dir_entry(%struct.ref_cache* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  %15 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %16 = getelementptr inbounds %struct.ref_cache, %struct.ref_cache* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  ret %struct.ref_cache* %17
}

declare dso_local %struct.ref_cache* @xcalloc(i32, i32) #1

declare dso_local i32 @create_dir_entry(%struct.ref_cache*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
