; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_prepare_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_prepare_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moved_entry = type { i32*, %struct.emitted_diff_symbol*, i32 }
%struct.emitted_diff_symbol = type { i32, i32 }
%struct.diff_options = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.emitted_diff_symbol* }

@XDF_WHITESPACE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.moved_entry* (%struct.diff_options*, i32)* @prepare_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.moved_entry* @prepare_entry(%struct.diff_options* %0, i32 %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.moved_entry*, align 8
  %6 = alloca %struct.emitted_diff_symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.moved_entry* @xmalloc(i32 24)
  store %struct.moved_entry* %9, %struct.moved_entry** %5, align 8
  %10 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %11 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %14, i64 %16
  store %struct.emitted_diff_symbol* %17, %struct.emitted_diff_symbol** %6, align 8
  %18 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @XDF_WHITESPACE_FLAGS, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %24 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %27 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @xdiff_hash_string(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.moved_entry*, %struct.moved_entry** %5, align 8
  %32 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @hashmap_entry_init(i32* %32, i32 %33)
  %35 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %36 = load %struct.moved_entry*, %struct.moved_entry** %5, align 8
  %37 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %36, i32 0, i32 1
  store %struct.emitted_diff_symbol* %35, %struct.emitted_diff_symbol** %37, align 8
  %38 = load %struct.moved_entry*, %struct.moved_entry** %5, align 8
  %39 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.moved_entry*, %struct.moved_entry** %5, align 8
  ret %struct.moved_entry* %40
}

declare dso_local %struct.moved_entry* @xmalloc(i32) #1

declare dso_local i32 @xdiff_hash_string(i32, i32, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
