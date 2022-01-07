; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_binlog_allow_query_networks_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_binlog_allow_query_networks_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@binlog_allow_query_networks = common dso_local global i32 0, align 4
@BAQN = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d/%d\00", align 1
@binlog_allow_query_networks6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@BAQN6 = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_binlog_allow_query_networks_dump(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %69, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @binlog_allow_query_networks, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BAQN, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %131

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 44, i8* %29, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 32, i8* %31, align 1
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %15
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = lshr i32 %38, 24
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = load i32, i32* %8, align 4
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BAQN, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %47, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %131

59:                                               ; preds = %35
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %11

72:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %122, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @binlog_allow_query_networks6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp sle i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %131

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  store i8 44, i8* %85, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  store i8 32, i8* %87, align 1
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @BAQN6, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @show_ipv6(i32 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @BAQN6, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %131

112:                                              ; preds = %91
  %113 = load i32, i32* %10, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %4, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %73

125:                                              ; preds = %73
  %126 = load i32, i32* %5, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  br label %131

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  store i8 0, i8* %130, align 1
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %128, %111, %83, %58, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @show_ipv6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
