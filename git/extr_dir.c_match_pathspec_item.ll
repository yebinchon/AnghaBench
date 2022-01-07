; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_match_pathspec_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_match_pathspec_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.pathspec_item = type { i8*, i32, i32, i32, i64, i64 }

@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@MATCHED_RECURSIVELY = common dso_local global i32 0, align 4
@MATCHED_EXACTLY = common dso_local global i32 0, align 4
@DO_MATCH_DIRECTORY = common dso_local global i32 0, align 4
@MATCHED_FNMATCH = common dso_local global i32 0, align 4
@DO_MATCH_LEADING_PATHSPEC = common dso_local global i32 0, align 4
@MATCHED_RECURSIVELY_LEADING_PATHSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.pathspec_item*, i32, i8*, i32, i32)* @match_pathspec_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_pathspec_item(%struct.index_state* %0, %struct.pathspec_item* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.pathspec_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.pathspec_item* %1, %struct.pathspec_item** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %18 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %14, align 8
  %23 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %24 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %29 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %6
  %33 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %34 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PATHSPEC_ICASE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %41 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %49 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @strncmp(i8* %42, i8* %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %221

54:                                               ; preds = %39, %32, %6
  %55 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %56 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.index_state*, %struct.index_state** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %64 = call i32 @match_pathspec_attrs(%struct.index_state* %60, i8* %61, i32 %62, %struct.pathspec_item* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %221

67:                                               ; preds = %59, %54
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @MATCHED_RECURSIVELY, align 4
  store i32 %72, i32* %7, align 4
  br label %221

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @ps_strncmp(%struct.pathspec_item* %78, i8* %79, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @MATCHED_EXACTLY, align 4
  store i32 %89, i32* %7, align 4
  br label %221

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %107, label %99

99:                                               ; preds = %90
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %90
  %108 = load i32, i32* @MATCHED_RECURSIVELY, align 4
  store i32 %108, i32* %7, align 4
  br label %221

109:                                              ; preds = %99
  br label %139

110:                                              ; preds = %77, %73
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @DO_MATCH_DIRECTORY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %138

124:                                              ; preds = %115
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @ps_strncmp(%struct.pathspec_item* %130, i8* %131, i8* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @MATCHED_EXACTLY, align 4
  store i32 %137, i32* %7, align 4
  br label %221

138:                                              ; preds = %129, %124, %115, %110
  br label %139

139:                                              ; preds = %138, %109
  %140 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %141 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %144 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %139
  %148 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %149 = load i8*, i8** %14, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %152 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %153, %154
  %156 = call i32 @git_fnmatch(%struct.pathspec_item* %148, i8* %149, i8* %150, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %147
  %159 = load i32, i32* @MATCHED_FNMATCH, align 4
  store i32 %159, i32* %7, align 4
  br label %221

160:                                              ; preds = %147, %139
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @DO_MATCH_LEADING_PATHSPEC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %220

165:                                              ; preds = %160
  %166 = load i8*, i8** %11, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 47
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %165
  %180 = load i8*, i8** %14, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %16, align 4
  %183 = sub nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 47
  br i1 %188, label %189, label %198

189:                                              ; preds = %179
  %190 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %191 = load i8*, i8** %14, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @ps_strncmp(%struct.pathspec_item* %190, i8* %191, i8* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @MATCHED_RECURSIVELY_LEADING_PATHSPEC, align 4
  store i32 %197, i32* %7, align 4
  br label %221

198:                                              ; preds = %189, %179, %165
  %199 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %200 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %203 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %198
  %207 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %211 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i64 @ps_strncmp(%struct.pathspec_item* %207, i8* %208, i8* %209, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  store i32 0, i32* %7, align 4
  br label %221

218:                                              ; preds = %206, %198
  %219 = load i32, i32* @MATCHED_RECURSIVELY_LEADING_PATHSPEC, align 4
  store i32 %219, i32* %7, align 4
  br label %221

220:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %220, %218, %217, %196, %158, %136, %107, %88, %71, %66, %53
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @match_pathspec_attrs(%struct.index_state*, i8*, i32, %struct.pathspec_item*) #1

declare dso_local i64 @ps_strncmp(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i32 @git_fnmatch(%struct.pathspec_item*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
