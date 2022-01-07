; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_nla_reserve.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_nla_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32, i32 }
%struct.nl_msg = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"msg %p: Reserved %d bytes at offset +%td for attr %d nlmsg_len=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlattr* @nla_reserve(%struct.nl_msg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %11 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @NLMSG_ALIGN(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @nla_total_size(i32 %16)
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %21 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %19, %24
  %26 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %27 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.nlattr* null, %struct.nlattr** %4, align 8
  br label %78

31:                                               ; preds = %3
  %32 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %33 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i64 @nlmsg_tail(%struct.TYPE_3__* %34)
  %36 = inttoptr i64 %35 to %struct.nlattr*
  store %struct.nlattr* %36, %struct.nlattr** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %39 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @nla_attr_size(i32 %40)
  %42 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %43 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %45 = bitcast %struct.nlattr* %44 to i8*
  %46 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %47 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @nla_padlen(i32 %51)
  %53 = call i32 @memset(i8* %50, i32 0, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %56 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %62 = bitcast %struct.nlattr* %61 to i8*
  %63 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %64 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = call i32 @nlmsg_data(%struct.TYPE_3__* %65)
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr i8, i8* %62, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %72 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %59, i32 %60, i8* %69, i32 %70, i32 %75)
  %77 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  store %struct.nlattr* %77, %struct.nlattr** %4, align 8
  br label %78

78:                                               ; preds = %31, %30
  %79 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  ret %struct.nlattr* %79
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i64 @nlmsg_tail(%struct.TYPE_3__*) #1

declare dso_local i32 @nla_attr_size(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @nla_padlen(i32) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, i32, i8*, i32, i32) #1

declare dso_local i32 @nlmsg_data(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
