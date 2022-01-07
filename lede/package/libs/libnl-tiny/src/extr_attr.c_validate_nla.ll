; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_validate_nla.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_attr.c_validate_nla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_policy = type { i64, i32, i32 }

@NLA_TYPE_MAX = common dso_local global i64 0, align 8
@NLA_UNSPEC = common dso_local global i64 0, align 8
@nla_attr_minlen = common dso_local global i32* null, align 8
@NLA_FLAG = common dso_local global i64 0, align 8
@NLE_RANGE = common dso_local global i32 0, align 4
@NLA_STRING = common dso_local global i64 0, align 8
@NLE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, %struct.nla_policy*)* @validate_nla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_nla(%struct.nlattr* %0, i32 %1, %struct.nla_policy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nla_policy*, align 8
  %8 = alloca %struct.nla_policy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nla_policy* %2, %struct.nla_policy** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i32 @nla_type(%struct.nlattr* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %115

21:                                               ; preds = %16
  %22 = load %struct.nla_policy*, %struct.nla_policy** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %22, i64 %24
  store %struct.nla_policy* %25, %struct.nla_policy** %8, align 8
  %26 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %27 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NLA_TYPE_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %35 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %40 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %44 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NLA_UNSPEC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32*, i32** @nla_attr_minlen, align 8
  %50 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %51 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %42
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %58 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NLA_FLAG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %64 = call i32 @nla_len(%struct.nlattr* %63)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @NLE_RANGE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %115

69:                                               ; preds = %62, %56
  %70 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %71 = call i32 @nla_len(%struct.nlattr* %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @NLE_RANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %115

77:                                               ; preds = %69
  %78 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %79 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %84 = call i32 @nla_len(%struct.nlattr* %83)
  %85 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %86 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @NLE_RANGE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %115

92:                                               ; preds = %82, %77
  %93 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %94 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NLA_STRING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %100 = call i8* @nla_data(%struct.nlattr* %99)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %103 = call i32 @nla_len(%struct.nlattr* %102)
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @NLE_INVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %115

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %92
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %110, %89, %74, %66, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
