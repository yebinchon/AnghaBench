; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_hosts_list_by_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_hosts_list_by_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.pair_hostid_result = type { i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"get_hosts_list_by_status: unknown status \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"get_hosts_list_by_status: get_transaction_f (0x%llx, %d) returns NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"get_hosts_list_by_status: get_pairs_hostid_result returns NULL.\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@HOSTS = common dso_local global %struct.TYPE_5__** null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s,0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_hosts_list_by_status(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pair_hostid_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @alpha_to_status(i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i8* null, i8** %4, align 8
  br label %166

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_4__* @get_transaction_f(i64 %26, i32 %27, i32 0)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %33)
  store i8* null, i8** %4, align 8
  br label %166

35:                                               ; preds = %25
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.pair_hostid_result* @get_pairs_hostid_result(i32* %11, i64 %36, i32 %39)
  store %struct.pair_hostid_result* %40, %struct.pair_hostid_result** %12, align 8
  %41 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %42 = icmp eq %struct.pair_hostid_result* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %166

45:                                               ; preds = %35
  %46 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 28
  %49 = call i32 @filter_pairs_hostid_result(%struct.pair_hostid_result* %46, i32* %11, i32 %48, i32 -268435456)
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %54 = call i32 @free(%struct.pair_hostid_result* %53)
  %55 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** %4, align 8
  br label %166

56:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %62, i64 %64
  %66 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 268435455
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %57

72:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %110, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %79, i64 %81
  %83 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @snprintf(i8* %78, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 64
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %93 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %93, i64 %95
  %97 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %92, i64 %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = add nsw i64 %91, %103
  %105 = add nsw i64 %104, 2
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %77
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %73

113:                                              ; preds = %73
  %114 = load i32, i32* %14, align 4
  %115 = call i8* @malloc(i32 %114)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  store i8* %116, i8** %17, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %150, %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %17, align 8
  store i8 44, i8* %125, align 1
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i8*, i8** %17, align 8
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %130 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %130, i64 %132
  %134 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %140, i64 %142
  %144 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %139, i32 %145)
  %147 = load i8*, i8** %17, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %17, align 8
  br label %150

150:                                              ; preds = %127
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %117

153:                                              ; preds = %117
  %154 = load i8*, i8** %17, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = icmp eq i8* %154, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %164 = call i32 @free(%struct.pair_hostid_result* %163)
  %165 = load i8*, i8** %16, align 8
  store i8* %165, i8** %4, align 8
  br label %166

166:                                              ; preds = %153, %52, %43, %31, %22
  %167 = load i8*, i8** %4, align 8
  ret i8* %167
}

declare dso_local i32 @alpha_to_status(i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @get_transaction_f(i64, i32, i32) #1

declare dso_local %struct.pair_hostid_result* @get_pairs_hostid_result(i32*, i64, i32) #1

declare dso_local i32 @filter_pairs_hostid_result(%struct.pair_hostid_result*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.pair_hostid_result*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
