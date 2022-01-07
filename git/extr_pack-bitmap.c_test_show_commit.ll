; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_test_show_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_test_show_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bitmap_test_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Object not in bitmap: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i8*)* @test_show_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_show_commit(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bitmap_test_data*, align 8
  %6 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bitmap_test_data*
  store %struct.bitmap_test_data* %8, %struct.bitmap_test_data** %5, align 8
  %9 = load %struct.bitmap_test_data*, %struct.bitmap_test_data** %5, align 8
  %10 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.commit*, %struct.commit** %3, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @bitmap_position(i32 %11, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @oid_to_hex(i32* %21)
  %23 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.bitmap_test_data*, %struct.bitmap_test_data** %5, align 8
  %26 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @bitmap_set(i32 %27, i32 %28)
  %30 = load %struct.bitmap_test_data*, %struct.bitmap_test_data** %5, align 8
  %31 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bitmap_test_data*, %struct.bitmap_test_data** %5, align 8
  %34 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = call i32 @display_progress(i32 %32, i32 %36)
  ret void
}

declare dso_local i32 @bitmap_position(i32, i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @bitmap_set(i32, i32) #1

declare dso_local i32 @display_progress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
