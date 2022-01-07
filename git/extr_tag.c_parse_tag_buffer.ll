; ModuleID = '/home/carl/AnghaBench/git/extr_tag.c_parse_tag_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_tag.c_parse_tag_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.repository = type { i32 }
%struct.tag = type { i32, i32, %struct.object*, %struct.TYPE_3__ }
%struct.object = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"object \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@blob_type = common dso_local global i32 0, align 4
@tree_type = common dso_local global i32 0, align 4
@commit_type = common dso_local global i32 0, align 4
@tag_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown type %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tag \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tagger \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_tag_buffer(%struct.repository* %0, %struct.tag* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.tag*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.tag* %1, %struct.tag** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %13, align 8
  %19 = load %struct.tag*, %struct.tag** %7, align 8
  %20 = getelementptr inbounds %struct.tag, %struct.tag* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %204

25:                                               ; preds = %4
  %26 = load %struct.tag*, %struct.tag** %7, align 8
  %27 = getelementptr inbounds %struct.tag, %struct.tag* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 24
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %204

37:                                               ; preds = %25
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %38, i32 7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  %44 = call i64 @parse_oid_hex(i8* %43, %struct.object_id* %10, i8** %12)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %41, %37
  store i32 -1, i32* %5, align 4
  br label %204

53:                                               ; preds = %46
  %54 = load i8*, i8** %12, align 8
  %55 = call i64 @starts_with(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %204

58:                                               ; preds = %53
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i8* @memchr(i8* %61, i8 signext 10, i32 %67)
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = icmp ule i64 20, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %58
  store i32 -1, i32* %5, align 4
  br label %204

79:                                               ; preds = %71
  %80 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i8* %80, i8* %81, i32 %87)
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %12, align 8
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %98 = load i32, i32* @blob_type, align 4
  %99 = call i32 @strcmp(i8* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %79
  %102 = load %struct.repository*, %struct.repository** %6, align 8
  %103 = call i64 @lookup_blob(%struct.repository* %102, %struct.object_id* %10)
  %104 = inttoptr i64 %103 to %struct.object*
  %105 = load %struct.tag*, %struct.tag** %7, align 8
  %106 = getelementptr inbounds %struct.tag, %struct.tag* %105, i32 0, i32 2
  store %struct.object* %104, %struct.object** %106, align 8
  br label %148

107:                                              ; preds = %79
  %108 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %109 = load i32, i32* @tree_type, align 4
  %110 = call i32 @strcmp(i8* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.repository*, %struct.repository** %6, align 8
  %114 = call i64 @lookup_tree(%struct.repository* %113, %struct.object_id* %10)
  %115 = inttoptr i64 %114 to %struct.object*
  %116 = load %struct.tag*, %struct.tag** %7, align 8
  %117 = getelementptr inbounds %struct.tag, %struct.tag* %116, i32 0, i32 2
  store %struct.object* %115, %struct.object** %117, align 8
  br label %147

118:                                              ; preds = %107
  %119 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %120 = load i32, i32* @commit_type, align 4
  %121 = call i32 @strcmp(i8* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load %struct.repository*, %struct.repository** %6, align 8
  %125 = call i64 @lookup_commit(%struct.repository* %124, %struct.object_id* %10)
  %126 = inttoptr i64 %125 to %struct.object*
  %127 = load %struct.tag*, %struct.tag** %7, align 8
  %128 = getelementptr inbounds %struct.tag, %struct.tag* %127, i32 0, i32 2
  store %struct.object* %126, %struct.object** %128, align 8
  br label %146

129:                                              ; preds = %118
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %131 = load i32, i32* @tag_type, align 4
  %132 = call i32 @strcmp(i8* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.repository*, %struct.repository** %6, align 8
  %136 = call i64 @lookup_tag(%struct.repository* %135, %struct.object_id* %10)
  %137 = inttoptr i64 %136 to %struct.object*
  %138 = load %struct.tag*, %struct.tag** %7, align 8
  %139 = getelementptr inbounds %struct.tag, %struct.tag* %138, i32 0, i32 2
  store %struct.object* %137, %struct.object** %139, align 8
  br label %145

140:                                              ; preds = %129
  %141 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %142 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  %143 = load %struct.tag*, %struct.tag** %7, align 8
  %144 = getelementptr inbounds %struct.tag, %struct.tag* %143, i32 0, i32 2
  store %struct.object* null, %struct.object** %144, align 8
  br label %145

145:                                              ; preds = %140, %134
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146, %112
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  %151 = load i8*, i8** %13, align 8
  %152 = icmp ult i8* %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %12, align 8
  %155 = call i64 @starts_with(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %159

158:                                              ; preds = %153, %148
  store i32 -1, i32* %5, align 4
  br label %204

159:                                              ; preds = %157
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 4
  store i8* %161, i8** %12, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = call i8* @memchr(i8* %162, i8 signext 10, i32 %168)
  store i8* %169, i8** %14, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %159
  store i32 -1, i32* %5, align 4
  br label %204

173:                                              ; preds = %159
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = call i32 @xmemdupz(i8* %174, i32 %180)
  %182 = load %struct.tag*, %struct.tag** %7, align 8
  %183 = getelementptr inbounds %struct.tag, %struct.tag* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %12, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 7
  %188 = load i8*, i8** %13, align 8
  %189 = icmp ult i8* %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %173
  %191 = load i8*, i8** %12, align 8
  %192 = call i64 @starts_with(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 @parse_tag_date(i8* %195, i8* %196)
  %198 = load %struct.tag*, %struct.tag** %7, align 8
  %199 = getelementptr inbounds %struct.tag, %struct.tag* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %203

200:                                              ; preds = %190, %173
  %201 = load %struct.tag*, %struct.tag** %7, align 8
  %202 = getelementptr inbounds %struct.tag, %struct.tag* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %194
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %203, %172, %158, %78, %57, %52, %36, %24
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @lookup_blob(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @lookup_tree(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @lookup_tag(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @xmemdupz(i8*, i32) #1

declare dso_local i32 @parse_tag_date(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
