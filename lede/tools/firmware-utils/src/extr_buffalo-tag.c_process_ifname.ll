; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_process_ifname.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_process_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_files = common dso_local global i64 0, align 8
@ifname = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"too many input files specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @process_ifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ifname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @num_files, align 8
  %5 = load i8**, i8*** @ifname, align 8
  %6 = call i64 @ARRAY_SIZE(i8** %5)
  %7 = icmp sge i64 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8**, i8*** @ifname, align 8
  %13 = load i64, i64* @num_files, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @num_files, align 8
  %15 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %11, i8** %15, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
