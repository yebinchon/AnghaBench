; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_cmp_ccp_list_entries.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_cmp_ccp_list_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_list_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_ccp_list_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_ccp_list_entries(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccp_list_entry*, align 8
  %7 = alloca %struct.ccp_list_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ccp_list_entry*
  store %struct.ccp_list_entry* %9, %struct.ccp_list_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ccp_list_entry*
  store %struct.ccp_list_entry* %11, %struct.ccp_list_entry** %7, align 8
  %12 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %22 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %25 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %31 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %34 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %40 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %43 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %48

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %37, %28, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
