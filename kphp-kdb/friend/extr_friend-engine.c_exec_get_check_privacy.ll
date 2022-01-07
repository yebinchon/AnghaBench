; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_check_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_check_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d~%d:%n\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"check_privacy(%d,%d,%016llx) = %d\0A\00", align 1
@stats_buff = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_get_check_privacy(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %151

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 @parse_privacy_key(i8* %20, i32* %12, i32 -1)
  store i32 %21, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %151

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @check_privacy(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @verbosity, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, -4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 48, %53
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 63, %51 ], [ %54, %52 ]
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** @stats_buff, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load i8*, i8** @stats_buff, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  %62 = load %struct.connection*, %struct.connection** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** @stats_buff, align 8
  %65 = call i32 @return_one_key(%struct.connection* %62, i8* %63, i8* %64, i32 1)
  br label %152

66:                                               ; preds = %23
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 44
  br i1 %73, label %74, label %149

74:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %126, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 256
  br i1 %77, label %78, label %131

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @check_privacy(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, -4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 48, %88
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 63, %86 ], [ %89, %87 ]
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** @stats_buff, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  %98 = load i32, i32* @verbosity, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load i32, i32* @stderr, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %90
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 44
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %131

116:                                              ; preds = %107
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = call i32 @parse_privacy_key(i8* %121, i32* %12, i32 -1)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %131

126:                                              ; preds = %116
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %75

131:                                              ; preds = %125, %115, %75
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %131
  %139 = load i8*, i8** @stats_buff, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load %struct.connection*, %struct.connection** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** @stats_buff, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @return_one_key(%struct.connection* %143, i8* %144, i8* %145, i32 %146)
  br label %152

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %66
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %16, %3
  br label %152

152:                                              ; preds = %151, %138, %55
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @parse_privacy_key(i8*, i32*, i32) #1

declare dso_local i32 @check_privacy(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
