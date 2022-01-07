; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_extend_abbrev_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_extend_abbrev_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.min_abbrev_data = type { i32, i64*, i32 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*)* @extend_abbrev_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extend_abbrev_len(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.min_abbrev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.min_abbrev_data*
  store %struct.min_abbrev_data* %8, %struct.min_abbrev_data** %5, align 8
  %9 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %5, align 8
  %10 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %5, align 8
  %14 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %5, align 8
  %23 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.object_id*, %struct.object_id** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @get_hex_char_from_oid(%struct.object_id* %29, i32 %30)
  %32 = icmp eq i64 %28, %31
  br label %33

33:                                               ; preds = %21, %12
  %34 = phi i1 [ false, %12 ], [ %32, %21 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %5, align 8
  %45 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  %51 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %5, align 8
  %52 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %42, %38
  ret i32 0
}

declare dso_local i64 @get_hex_char_from_oid(%struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
