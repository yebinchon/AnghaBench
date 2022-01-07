; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_prime_ref_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_prime_ref_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32, %struct.ref_entry** }
%struct.ref_entry = type { i32, i32 }

@REF_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_dir*, i8*)* @prime_ref_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prime_ref_dir(%struct.ref_dir* %0, i8* %1) #0 {
  %3 = alloca %struct.ref_dir*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %10 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %15 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %14, i32 0, i32 1
  %16 = load %struct.ref_entry**, %struct.ref_entry*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %16, i64 %18
  %20 = load %struct.ref_entry*, %struct.ref_entry** %19, align 8
  store %struct.ref_entry* %20, %struct.ref_entry** %6, align 8
  %21 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %22 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REF_DIR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %50

28:                                               ; preds = %13
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %33 = call %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %32)
  call void @prime_ref_dir(%struct.ref_dir* %33, i8* null)
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @overlaps_prefix(i32 %37, i8* %38)
  switch i32 %39, label %48 [
    i32 130, label %40
    i32 128, label %43
    i32 129, label %47
  ]

40:                                               ; preds = %34
  %41 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %42 = call %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %41)
  call void @prime_ref_dir(%struct.ref_dir* %42, i8* null)
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %45 = call %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %44)
  %46 = load i8*, i8** %4, align 8
  call void @prime_ref_dir(%struct.ref_dir* %45, i8* %46)
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %34, %47, %43, %40
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %7

54:                                               ; preds = %7
  ret void
}

declare dso_local %struct.ref_dir* @get_ref_dir(%struct.ref_entry*) #1

declare dso_local i32 @overlaps_prefix(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
