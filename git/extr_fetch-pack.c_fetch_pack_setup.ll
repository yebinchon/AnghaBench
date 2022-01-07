; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_setup.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fetch_pack_setup.did_setup = internal global i32 0, align 4
@transfer_unpack_limit = common dso_local global i64 0, align 8
@unpack_limit = common dso_local global i64 0, align 8
@fetch_unpack_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fetch_pack_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_pack_setup() #0 {
  %1 = load i32, i32* @fetch_pack_setup.did_setup, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = call i32 (...) @fetch_pack_config()
  %6 = load i64, i64* @transfer_unpack_limit, align 8
  %7 = icmp sle i64 0, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i64, i64* @transfer_unpack_limit, align 8
  store i64 %9, i64* @unpack_limit, align 8
  br label %16

10:                                               ; preds = %4
  %11 = load i64, i64* @fetch_unpack_limit, align 8
  %12 = icmp sle i64 0, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i64, i64* @fetch_unpack_limit, align 8
  store i64 %14, i64* @unpack_limit, align 8
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %15, %8
  store i32 1, i32* @fetch_pack_setup.did_setup, align 4
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @fetch_pack_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
