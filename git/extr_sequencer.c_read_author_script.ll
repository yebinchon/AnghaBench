; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_author_script.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_author_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_NAME\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"'GIT_AUTHOR_NAME' already given\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"GIT_AUTHOR_EMAIL\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"'GIT_AUTHOR_EMAIL' already given\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_DATE\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"'GIT_AUTHOR_DATE' already given\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unknown variable '%s'\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"missing 'GIT_AUTHOR_NAME'\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"missing 'GIT_AUTHOR_EMAIL'\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"missing 'GIT_AUTHOR_DATE'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_author_script(i8* %0, i8** %1, i8** %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.string_list, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = bitcast %struct.string_list* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  store i32 -1, i32* %14, align 4
  store i32 -2, i32* %16, align 4
  store i32 -2, i32* %17, align 4
  store i32 -2, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strbuf_read_file(%struct.strbuf* %12, i8* %22, i32 256)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = call i32 @strbuf_release(%struct.strbuf* %12)
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ENOENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %188

34:                                               ; preds = %30, %25
  %35 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @error_errno(i32 %35, i8* %36)
  store i32 %37, i32* %6, align 4
  br label %188

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @parse_key_value_squoted(i32 %40, %struct.string_list* %13)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %179

44:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %120, %44
  %46 = load i32, i32* %15, align 4
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcmp(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, -2
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 (i32, ...) @error(i32 %64)
  store i32 %65, i32* %16, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %66, %63
  br label %119

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcmp(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, -2
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 (i32, ...) @error(i32 %83)
  store i32 %84, i32* %17, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %85, %82
  br label %118

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strcmp(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, -2
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i32 (i32, ...) @error(i32 %102)
  store i32 %103, i32* %18, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %104, %101
  br label %117

107:                                              ; preds = %88
  %108 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, ...) @error(i32 %108, i32 %115)
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %107, %106
  br label %118

118:                                              ; preds = %117, %87
  br label %119

119:                                              ; preds = %118, %68
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %45

123:                                              ; preds = %45
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, -2
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %128 = call i32 (i32, ...) @error(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %130, -2
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %134 = call i32 (i32, ...) @error(i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %18, align 4
  %137 = icmp eq i32 %136, -2
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %140 = call i32 (i32, ...) @error(i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %18, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %17, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150, %147, %144, %141
  br label %179

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** %8, align 8
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** %9, align 8
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %10, align 8
  store i8* %177, i8** %178, align 8
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %154, %153, %43
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @string_list_clear(%struct.string_list* %13, i32 %184)
  %186 = call i32 @strbuf_release(%struct.strbuf* %12)
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %179, %34, %33
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @parse_key_value_squoted(i32, %struct.string_list*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
