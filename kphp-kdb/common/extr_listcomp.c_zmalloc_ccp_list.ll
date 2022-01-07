; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_ccp_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_ccp_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_list_entry = type { %struct.ccp_list_entry*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccp_list_entry* (%struct.ccp_list_entry*, i32)* @zmalloc_ccp_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccp_list_entry* @zmalloc_ccp_list(%struct.ccp_list_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.ccp_list_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_list_entry*, align 8
  %7 = alloca %struct.ccp_list_entry*, align 8
  %8 = alloca %struct.ccp_list_entry*, align 8
  store %struct.ccp_list_entry* %0, %struct.ccp_list_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %6, align 8
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %14, i64 %16
  %18 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ccp_list_entry* @new_ccp_list_entry(i32 %19)
  store %struct.ccp_list_entry* %20, %struct.ccp_list_entry** %8, align 8
  %21 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %21, i64 %23
  %25 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %30 = icmp eq %struct.ccp_list_entry* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %13
  %32 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  store %struct.ccp_list_entry* %32, %struct.ccp_list_entry** %7, align 8
  store %struct.ccp_list_entry* %32, %struct.ccp_list_entry** %6, align 8
  br label %37

33:                                               ; preds = %13
  %34 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  %35 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %35, i32 0, i32 0
  store %struct.ccp_list_entry* %34, %struct.ccp_list_entry** %36, align 8
  store %struct.ccp_list_entry* %34, %struct.ccp_list_entry** %7, align 8
  br label %37

37:                                               ; preds = %33, %31
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  ret %struct.ccp_list_entry* %42
}

declare dso_local %struct.ccp_list_entry* @new_ccp_list_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
