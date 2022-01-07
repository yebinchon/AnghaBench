; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_write_midx_oid_lookup.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_write_midx_oid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.pack_midx_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"OIDs not in order: %s >= %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, i8, %struct.pack_midx_entry*, i64)* @write_midx_oid_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_midx_oid_lookup(%struct.hashfile* %0, i8 zeroext %1, %struct.pack_midx_entry* %2, i64 %3) #0 {
  %5 = alloca %struct.hashfile*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.pack_midx_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pack_midx_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pack_midx_entry*, align 8
  %13 = alloca %struct.pack_midx_entry*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.pack_midx_entry* %2, %struct.pack_midx_entry** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  store %struct.pack_midx_entry* %14, %struct.pack_midx_entry** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %56, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %9, align 8
  %21 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %20, i32 1
  store %struct.pack_midx_entry* %21, %struct.pack_midx_entry** %9, align 8
  store %struct.pack_midx_entry* %20, %struct.pack_midx_entry** %12, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %23, 1
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %9, align 8
  store %struct.pack_midx_entry* %27, %struct.pack_midx_entry** %13, align 8
  %28 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %12, align 8
  %29 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %28, i32 0, i32 0
  %30 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %13, align 8
  %31 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %30, i32 0, i32 0
  %32 = call i64 @oidcmp(%struct.TYPE_4__* %29, %struct.TYPE_4__* %31)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %12, align 8
  %36 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %35, i32 0, i32 0
  %37 = call i32 @oid_to_hex(%struct.TYPE_4__* %36)
  %38 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %13, align 8
  %39 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %38, i32 0, i32 0
  %40 = call i32 @oid_to_hex(%struct.TYPE_4__* %39)
  %41 = call i32 @BUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %45 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %12, align 8
  %46 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 @hashwrite(%struct.hashfile* %44, i32 %48, i32 %50)
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %15

59:                                               ; preds = %15
  %60 = load i64, i64* %11, align 8
  ret i64 %60
}

declare dso_local i64 @oidcmp(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32 @BUG(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.TYPE_4__*) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
