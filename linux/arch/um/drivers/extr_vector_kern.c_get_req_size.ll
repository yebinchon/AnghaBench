; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_get_req_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_get_req_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gro\00", align 1
@ETH_HEADER_OTHER = common dso_local global i32 0, align 4
@SAFETY_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arglist*)* @get_req_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_req_size(%struct.arglist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arglist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.arglist* %0, %struct.arglist** %3, align 8
  %6 = load %struct.arglist*, %struct.arglist** %3, align 8
  %7 = call i8* @uml_vector_fetch_arg(%struct.arglist* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @kstrtoul(i8* %11, i32 10, i64* %5)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 65536, i32* %2, align 4
  br label %30

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.arglist*, %struct.arglist** %3, align 8
  %22 = call i32 @get_mtu(%struct.arglist* %21)
  %23 = load i32, i32* @ETH_HEADER_OTHER, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.arglist*, %struct.arglist** %3, align 8
  %26 = call i32 @get_headroom(%struct.arglist* %25)
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* @SAFETY_MARGIN, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i8* @uml_vector_fetch_arg(%struct.arglist*, i8*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @get_mtu(%struct.arglist*) #1

declare dso_local i32 @get_headroom(%struct.arglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
