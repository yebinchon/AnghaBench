; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_uptree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_uptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_decoder = type { i32, i64 }
%struct.ylist_decoder_stack_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*, i32)* @ylist_uptree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ylist_uptree(%struct.ylist_decoder* %0, %struct.ylist_decoder_stack_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.ylist_decoder*, align 8
  %5 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ylist_decoder* %0, %struct.ylist_decoder** %4, align 8
  store %struct.ylist_decoder_stack_entry* %1, %struct.ylist_decoder_stack_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %10 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  br label %11

11:                                               ; preds = %39, %3
  %12 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %12, i32 -1
  store %struct.ylist_decoder_stack_entry* %13, %struct.ylist_decoder_stack_entry** %5, align 8
  %14 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %15 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %11
  %36 = load %struct.ylist_decoder*, %struct.ylist_decoder** %4, align 8
  %37 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %5, align 8
  %38 = call i32 @ylist_copy_positions(%struct.ylist_decoder* %36, %struct.ylist_decoder_stack_entry* %37)
  ret void

39:                                               ; preds = %11
  br label %11
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ylist_copy_positions(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
