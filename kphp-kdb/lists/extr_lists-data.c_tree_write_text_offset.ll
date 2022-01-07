; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_write_text_offset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_write_text_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.tree_payload = type { i64 }

@new_text_cur_offset = common dso_local global i32 0, align 4
@OTree = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tree_write_text_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_write_text_offset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tree_payload*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @new_text_cur_offset, align 4
  %6 = call i32 @writeout_int(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.tree_payload* @LPAYLOAD(i32* %7)
  store %struct.tree_payload* %8, %struct.tree_payload** %3, align 8
  %9 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %10 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %15 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @get_text_len(i64 %16)
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OTree, i32 0, i32 0), align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @NODE_RPOS(i32* %20)
  %22 = sub nsw i64 %19, %21
  %23 = call i32 @metafile_get_text(i64 %22, i32* %4)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @new_text_cur_offset, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @new_text_cur_offset, align 4
  ret i32 0
}

declare dso_local i32 @writeout_int(i32) #1

declare dso_local %struct.tree_payload* @LPAYLOAD(i32*) #1

declare dso_local i32 @get_text_len(i64) #1

declare dso_local i32 @metafile_get_text(i64, i32*) #1

declare dso_local i64 @NODE_RPOS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
