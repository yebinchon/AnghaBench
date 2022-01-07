; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_conflicting_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_conflicting_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_index_entry = type { i32, i32, i8*, i32 }

@CONFLICTING_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@CONFLICTING_OURS_OID = common dso_local global i32 0, align 4
@CONFLICTING_THEIRS_OID = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_conflicting_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_conflicting_index() #0 {
  %1 = alloca [3 x %struct.checkout_index_entry], align 16
  %2 = getelementptr inbounds [3 x %struct.checkout_index_entry], [3 x %struct.checkout_index_entry]* %1, i64 0, i64 0
  %3 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %2, i32 0, i32 0
  store i32 33188, i32* %3, align 8
  %4 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %2, i32 0, i32 1
  %5 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %2, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  %7 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %2, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str to i32), i32* %7, align 8
  %8 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %2, i64 1
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 0
  store i32 33188, i32* %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 1
  %11 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i64 1
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 8
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 1
  %17 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str to i32), i32* %19, align 8
  %20 = getelementptr inbounds [3 x %struct.checkout_index_entry], [3 x %struct.checkout_index_entry]* %1, i64 0, i64 0
  %21 = call i32 @create_index(%struct.checkout_index_entry* %20, i32 3)
  %22 = load i32, i32* @g_index, align 4
  %23 = call i32 @git_index_write(i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  ret void
}

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
