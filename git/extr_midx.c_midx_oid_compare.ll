; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_midx_oid_compare.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_midx_oid_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_midx_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @midx_oid_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midx_oid_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pack_midx_entry*, align 8
  %7 = alloca %struct.pack_midx_entry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pack_midx_entry*
  store %struct.pack_midx_entry* %10, %struct.pack_midx_entry** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pack_midx_entry*
  store %struct.pack_midx_entry* %12, %struct.pack_midx_entry** %7, align 8
  %13 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %6, align 8
  %14 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %13, i32 0, i32 2
  %15 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  %16 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %15, i32 0, i32 2
  %17 = call i32 @oidcmp(i32* %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %6, align 8
  %24 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  %27 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %49

31:                                               ; preds = %22
  %32 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %6, align 8
  %33 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  %36 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %49

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %6, align 8
  %43 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  %46 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %39, %30, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @oidcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
