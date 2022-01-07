; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_charge_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_charge_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32*, i32*, i32*, i32* }
%struct.bio = type { i32 }

@BIO_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, %struct.bio*)* @throtl_charge_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_charge_bio(%struct.throtl_grp* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = call i32 @bio_data_dir(%struct.bio* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = call i32 @throtl_bio_data_size(%struct.bio* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %13 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %18, %11
  store i32 %19, i32* %17, align 4
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %30 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %38 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = load i32, i32* @BIO_THROTTLED, align 4
  %47 = call i32 @bio_flagged(%struct.bio* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %2
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = load i32, i32* @BIO_THROTTLED, align 4
  %52 = call i32 @bio_set_flag(%struct.bio* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @throtl_bio_data_size(%struct.bio*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
