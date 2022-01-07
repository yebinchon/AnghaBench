; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_write_author_script.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_write_author_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GIT_AUTHOR_NAME='\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"'\\%c'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"'\0AGIT_AUTHOR_EMAIL='\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"'\0AGIT_AUTHOR_DATE='@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @write_author_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_author_script(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @starts_with(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %32, %16
  %18 = call i32 (...) @rebase_path_author_script()
  %19 = call i32 @unlink(i32 %18)
  store i32 0, i32* %2, align 4
  br label %166

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @skip_prefix(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %36

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 10)
  store i8* %27, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %25
  br label %17

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %8

36:                                               ; preds = %24
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %77, %36
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 13
  br label %53

53:                                               ; preds = %48, %43, %38
  %54 = phi i1 [ false, %43 ], [ false, %38 ], [ %52, %48 ]
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @skip_prefix(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %3)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %78

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 39
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8, i8* %66, align 1
  %69 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext %68)
  br label %76

70:                                               ; preds = %60
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  %73 = load i8, i8* %71, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76
  br label %38

78:                                               ; preds = %59, %53
  %79 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %119, %78
  %81 = load i8*, i8** %3, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 13
  br label %95

95:                                               ; preds = %90, %85, %80
  %96 = phi i1 [ false, %85 ], [ false, %80 ], [ %94, %90 ]
  br i1 %96, label %97, label %120

97:                                               ; preds = %95
  %98 = load i8*, i8** %3, align 8
  %99 = call i64 @skip_prefix(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %3)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %120

102:                                              ; preds = %97
  %103 = load i8*, i8** %3, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 39
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %3, align 8
  %110 = load i8, i8* %108, align 1
  %111 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext %110)
  br label %118

112:                                              ; preds = %102
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %3, align 8
  %115 = load i8, i8* %113, align 1
  %116 = sext i8 %115 to i32
  %117 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %118
  br label %80

120:                                              ; preds = %101, %95
  %121 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %122

122:                                              ; preds = %155, %120
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i8*, i8** %3, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 10
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 13
  br label %137

137:                                              ; preds = %132, %127, %122
  %138 = phi i1 [ false, %127 ], [ false, %122 ], [ %136, %132 ]
  br i1 %138, label %139, label %156

139:                                              ; preds = %137
  %140 = load i8*, i8** %3, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 39
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %3, align 8
  %147 = load i8, i8* %145, align 1
  %148 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext %147)
  br label %155

149:                                              ; preds = %139
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %3, align 8
  %152 = load i8, i8* %150, align 1
  %153 = sext i8 %152 to i32
  %154 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %144
  br label %122

156:                                              ; preds = %137
  %157 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext 39)
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (...) @rebase_path_author_script()
  %163 = call i32 @write_message(i32 %159, i32 %161, i32 %162, i32 1)
  store i32 %163, i32* %6, align 4
  %164 = call i32 @strbuf_release(%struct.strbuf* %4)
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %156, %17
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @rebase_path_author_script(...) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @write_message(i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
