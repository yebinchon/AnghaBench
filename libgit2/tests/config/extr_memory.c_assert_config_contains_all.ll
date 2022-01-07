; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_assert_config_contains_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_assert_config_contains_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expected_entry = type { i32, i64 }

@contains_all_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.expected_entry*)* @assert_config_contains_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_config_contains_all(i32* %0, %struct.expected_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.expected_entry*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.expected_entry* %1, %struct.expected_entry** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @contains_all_cb, align 4
  %8 = load %struct.expected_entry*, %struct.expected_entry** %4, align 8
  %9 = call i32 @git_config_backend_foreach(i32* %6, i32 %7, %struct.expected_entry* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load %struct.expected_entry*, %struct.expected_entry** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %12, i64 %14
  %16 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load %struct.expected_entry*, %struct.expected_entry** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cl_assert(i32 %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_backend_foreach(i32*, i32, %struct.expected_entry*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
