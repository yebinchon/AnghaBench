; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATTERN_LEN = common dso_local global i64 0, align 8
@STRING_PROCESS_BUF_SIZE = common dso_local global i64 0, align 8
@SIMPLIFY_TYPE_COUNT = common dso_local global i32 0, align 4
@root = common dso_local global i32* null, align 8
@heap_pattern = common dso_local global i32 0, align 4
@ANSWER_CAPACITY = common dso_local global i32 0, align 4
@antispam_db_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @antispam_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @MAX_PATTERN_LEN, align 8
  %3 = load i64, i64* @STRING_PROCESS_BUF_SIZE, align 8
  %4 = icmp sle i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @SIMPLIFY_TYPE_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = call i32 @new_trie_node(i32 0, i32 0)
  %13 = load i32*, i32** @root, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* @heap_pattern, align 4
  %22 = load i32, i32* @ANSWER_CAPACITY, align 4
  %23 = call i32 @st_vec_create(i32 %21, i32 %22)
  %24 = load i32, i32* @antispam_db_request, align 4
  %25 = load i32, i32* @ANSWER_CAPACITY, align 4
  %26 = mul nsw i32 %25, 2
  %27 = call i32 @st_vec_create(i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @new_trie_node(i32, i32) #1

declare dso_local i32 @st_vec_create(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
