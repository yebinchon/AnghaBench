; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_integrity_format_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_integrity_format_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_integrity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_integrity*, i8*)* @integrity_format_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrity_format_show(%struct.blk_integrity* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_integrity*, align 8
  %5 = alloca i8*, align 8
  store %struct.blk_integrity* %0, %struct.blk_integrity** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %7 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %12 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %20 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %10, %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
