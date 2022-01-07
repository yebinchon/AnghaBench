; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_nla_put.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_nla_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nlattr = type { i32 }

@NLE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"msg %p: Wrote %d bytes at offset +%td for attr %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_put(%struct.nl_msg* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlattr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.nlattr* @nla_reserve(%struct.nl_msg* %11, i32 %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %10, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @NLE_NOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %22 = call i32 @nla_data(%struct.nlattr* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @memcpy(i32 %22, i8* %23, i32 %24)
  %26 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %29 = bitcast %struct.nlattr* %28 to i8*
  %30 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %31 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nlmsg_data(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr i8, i8* %29, i64 %35
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %26, i32 %27, i8* %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, i32, i8*, i32) #1

declare dso_local i32 @nlmsg_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
