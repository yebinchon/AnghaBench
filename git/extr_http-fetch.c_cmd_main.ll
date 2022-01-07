; ModuleID = '/home/carl/AnghaBench/git/extr_http-fetch.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-fetch.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32, i32, i64 }

@http_fetch_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"--recover\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [173 x i8] c"Some loose object were found to be corrupt, but they might be just\0Aa false '404 Not Found' error message sent with incorrect HTTP\0Astatus code.  Suggest running 'git fsck'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i8** null, i8*** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %131, %2
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br label %29

29:                                               ; preds = %19, %15
  %30 = phi i1 [ false, %15 ], [ %28, %19 ]
  br i1 %30, label %31, label %134

31:                                               ; preds = %29
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 116
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %131

42:                                               ; preds = %31
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 99
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %130

53:                                               ; preds = %42
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 97
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %129

64:                                               ; preds = %53
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 118
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %128

75:                                               ; preds = %64
  %76 = load i8**, i8*** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 119
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load i8**, i8*** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  store i8** %90, i8*** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %127

93:                                               ; preds = %75
  %94 = load i8**, i8*** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 104
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @http_fetch_usage, align 4
  %105 = call i32 @usage(i32 %104)
  br label %126

106:                                              ; preds = %93
  %107 = load i8**, i8*** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  store i32 1, i32* %14, align 4
  br label %125

115:                                              ; preds = %106
  %116 = load i8**, i8*** %4, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %115
  br label %125

125:                                              ; preds = %124, %114
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %85
  br label %128

128:                                              ; preds = %127, %74
  br label %129

129:                                              ; preds = %128, %63
  br label %130

130:                                              ; preds = %129, %52
  br label %131

131:                                              ; preds = %130, %41
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %15

134:                                              ; preds = %29
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 2
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp ne i32 %135, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @http_fetch_usage, align 4
  %143 = call i32 @usage(i32 %142)
  br label %144

144:                                              ; preds = %141, %134
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @walker_targets_stdin(i8*** %9, i8*** %8)
  store i32 %148, i32* %7, align 4
  br label %155

149:                                              ; preds = %144
  %150 = load i8**, i8*** %4, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8*, i8** %150, i64 %153
  store i8** %154, i8*** %9, align 8
  store i32 1, i32* %7, align 4
  br label %155

155:                                              ; preds = %149, %147
  %156 = load i8**, i8*** %4, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load i8**, i8*** %4, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @str_end_url_with_slash(i8* %167, i8** %10)
  br label %169

169:                                              ; preds = %162, %155
  %170 = call i32 (...) @setup_git_directory()
  %171 = load i32, i32* @git_default_config, align 4
  %172 = call i32 @git_config(i32 %171, i32* null)
  %173 = load i8*, i8** %10, align 8
  %174 = call i32 @http_init(i32* null, i8* %173, i32 0)
  %175 = load i8*, i8** %10, align 8
  %176 = call %struct.walker* @get_http_walker(i8* %175)
  store %struct.walker* %176, %struct.walker** %5, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.walker*, %struct.walker** %5, align 8
  %179 = getelementptr inbounds %struct.walker, %struct.walker* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.walker*, %struct.walker** %5, align 8
  %182 = getelementptr inbounds %struct.walker, %struct.walker* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.walker*, %struct.walker** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i8**, i8*** %9, align 8
  %186 = load i8**, i8*** %8, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @walker_fetch(%struct.walker* %183, i32 %184, i8** %185, i8** %186, i8* %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %169
  %192 = load i32, i32* %7, align 4
  %193 = load i8**, i8*** %9, align 8
  %194 = load i8**, i8*** %8, align 8
  %195 = call i32 @walker_targets_free(i32 %192, i8** %193, i8** %194)
  br label %196

196:                                              ; preds = %191, %169
  %197 = load %struct.walker*, %struct.walker** %5, align 8
  %198 = getelementptr inbounds %struct.walker, %struct.walker* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @stderr, align 4
  %203 = call i32 @fprintf(i32 %202, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  %205 = load %struct.walker*, %struct.walker** %5, align 8
  %206 = call i32 @walker_free(%struct.walker* %205)
  %207 = call i32 (...) @http_cleanup()
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i32, i32* %12, align 4
  ret i32 %210
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @walker_targets_stdin(i8***, i8***) #1

declare dso_local i32 @str_end_url_with_slash(i8*, i8**) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @http_init(i32*, i8*, i32) #1

declare dso_local %struct.walker* @get_http_walker(i8*) #1

declare dso_local i32 @walker_fetch(%struct.walker*, i32, i8**, i8**, i8*) #1

declare dso_local i32 @walker_targets_free(i32, i8**, i8**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @walker_free(%struct.walker*) #1

declare dso_local i32 @http_cleanup(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
