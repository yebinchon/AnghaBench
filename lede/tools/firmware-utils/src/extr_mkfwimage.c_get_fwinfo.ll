; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_get_fwinfo.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_get_fwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_info = type { i32 }

@fw_info = common dso_local global %struct.fw_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_info* (i8*)* @get_fwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_info* @get_fwinfo(i8* %0) #0 {
  %2 = alloca %struct.fw_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fw_info*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.fw_info*, %struct.fw_info** @fw_info, align 8
  store %struct.fw_info* %5, %struct.fw_info** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.fw_info*, %struct.fw_info** %4, align 8
  %8 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strlen(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.fw_info*, %struct.fw_info** %4, align 8
  %14 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.fw_info*, %struct.fw_info** %4, align 8
  store %struct.fw_info* %20, %struct.fw_info** %2, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.fw_info*, %struct.fw_info** %4, align 8
  %23 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %22, i32 1
  store %struct.fw_info* %23, %struct.fw_info** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.fw_info* null, %struct.fw_info** %2, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.fw_info*, %struct.fw_info** %2, align 8
  ret %struct.fw_info* %26
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
