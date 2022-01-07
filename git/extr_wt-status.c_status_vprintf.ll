; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_status_vprintf.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_status_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.wt_status = type { i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@comment_line_char = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i32, i8*, i8*, i32, i8*)* @status_vprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_vprintf(%struct.wt_status* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.wt_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %18 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @strbuf_vaddf(%struct.strbuf* %13, i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %6
  %26 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %27 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8, i8* @comment_line_char, align 1
  %32 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext %31)
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 32)
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %40 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @color_print_strbuf(i32 %41, i8* %42, %struct.strbuf* %13)
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %48 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %38
  %53 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %132

54:                                               ; preds = %6
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %15, align 8
  br label %57

57:                                               ; preds = %117, %54
  %58 = load i8*, i8** %15, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %57
  %62 = load i8*, i8** %15, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 10)
  store i8* %63, i8** %16, align 8
  %64 = call i32 @strbuf_reset(%struct.strbuf* %14)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %69 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i8, i8* @comment_line_char, align 1
  %74 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext %73)
  %75 = load i8*, i8** %15, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 10
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 9
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 32)
  br label %86

86:                                               ; preds = %84, %79, %72
  br label %87

87:                                               ; preds = %86, %67, %61
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %91, i32 %97)
  br label %102

99:                                               ; preds = %87
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %100)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %104 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @color_print_strbuf(i32 %105, i8* %106, %struct.strbuf* %14)
  %108 = load i8*, i8** %16, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %112 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %116

115:                                              ; preds = %102
  br label %120

116:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %15, align 8
  br label %57

120:                                              ; preds = %115, %57
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %125 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %123, %120
  %130 = call i32 @strbuf_release(%struct.strbuf* %14)
  %131 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %132

132:                                              ; preds = %129, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @color_print_strbuf(i32, i8*, %struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
