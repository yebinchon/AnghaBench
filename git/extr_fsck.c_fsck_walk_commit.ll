; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list*, i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object }
%struct.object = type { i32 }
%struct.fsck_options = type { i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* }
%struct.TYPE_4__ = type { %struct.object }

@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s^%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%.*s~%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s^\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i8*, %struct.fsck_options*)* @fsck_walk_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_walk_commit(%struct.commit* %0, i8* %1, %struct.fsck_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsck_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.object*, align 8
  store %struct.commit* %0, %struct.commit** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fsck_options* %2, %struct.fsck_options** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.commit*, %struct.commit** %5, align 8
  %19 = call i64 @parse_commit(%struct.commit* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %195

22:                                               ; preds = %3
  %23 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %24 = load %struct.commit*, %struct.commit** %5, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = call i8* @get_object_name(%struct.fsck_options* %23, i32* %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %31 = load %struct.commit*, %struct.commit** %5, align 8
  %32 = call %struct.TYPE_4__* @get_commit_tree(%struct.commit* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 (%struct.fsck_options*, %struct.object*, i8*, ...) @put_object_name(%struct.fsck_options* %30, %struct.object* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %38 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %37, i32 0, i32 0
  %39 = load i32 (%struct.object*, i32, i8*, %struct.fsck_options*)*, i32 (%struct.object*, i32, i8*, %struct.fsck_options*)** %38, align 8
  %40 = load %struct.commit*, %struct.commit** %5, align 8
  %41 = call %struct.TYPE_4__* @get_commit_tree(%struct.commit* %40)
  %42 = bitcast %struct.TYPE_4__* %41 to %struct.object*
  %43 = load i32, i32* @OBJ_TREE, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %46 = call i32 %39(%struct.object* %42, i32 %43, i8* %44, %struct.fsck_options* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %195

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.commit*, %struct.commit** %5, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %53, i32 0, i32 0
  %55 = load %struct.commit_list*, %struct.commit_list** %54, align 8
  store %struct.commit_list* %55, %struct.commit_list** %11, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %129

58:                                               ; preds = %51
  %59 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %60 = icmp ne %struct.commit_list* %59, null
  br i1 %60, label %61, label %129

61:                                               ; preds = %58
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 94
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %128

78:                                               ; preds = %66, %61
  store i32 0, i32* %9, align 4
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @isdigit(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %82, %79
  %92 = phi i1 [ false, %79 ], [ %90, %82 ]
  br i1 %92, label %93, label %109

93:                                               ; preds = %91
  %94 = load i32, i32* %16, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  %103 = mul nsw i32 %94, %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %16, align 4
  %108 = mul nsw i32 %107, 10
  store i32 %108, i32* %16, align 4
  br label %79

109:                                              ; preds = %91
  %110 = load i32, i32* %16, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 126
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %124, %115, %112, %109
  br label %128

128:                                              ; preds = %127, %75
  br label %129

129:                                              ; preds = %128, %58, %51
  br label %130

130:                                              ; preds = %189, %129
  %131 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %132 = icmp ne %struct.commit_list* %131, null
  br i1 %132, label %133, label %193

133:                                              ; preds = %130
  %134 = load i8*, i8** %14, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %168

136:                                              ; preds = %133
  %137 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %138 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store %struct.object* %140, %struct.object** %17, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = icmp ne i32 %141, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %146 = load %struct.object*, %struct.object** %17, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (%struct.fsck_options*, %struct.object*, i8*, ...) @put_object_name(%struct.fsck_options* %145, %struct.object* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %147, i32 %148)
  br label %167

150:                                              ; preds = %136
  %151 = load i32, i32* %9, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %155 = load %struct.object*, %struct.object** %17, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 (%struct.fsck_options*, %struct.object*, i8*, ...) @put_object_name(%struct.fsck_options* %154, %struct.object* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %156, i8* %157, i32 %159)
  br label %166

161:                                              ; preds = %150
  %162 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %163 = load %struct.object*, %struct.object** %17, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = call i32 (%struct.fsck_options*, %struct.object*, i8*, ...) @put_object_name(%struct.fsck_options* %162, %struct.object* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %161, %153
  br label %167

167:                                              ; preds = %166, %144
  br label %168

168:                                              ; preds = %167, %133
  %169 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %170 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %169, i32 0, i32 0
  %171 = load i32 (%struct.object*, i32, i8*, %struct.fsck_options*)*, i32 (%struct.object*, i32, i8*, %struct.fsck_options*)** %170, align 8
  %172 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %173 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = bitcast %struct.TYPE_3__* %174 to %struct.object*
  %176 = load i32, i32* @OBJ_COMMIT, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %179 = call i32 %171(%struct.object* %175, i32 %176, i8* %177, %struct.fsck_options* %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %168
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %4, align 4
  br label %195

184:                                              ; preds = %168
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %187, %184
  %190 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %191 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %190, i32 0, i32 0
  %192 = load %struct.commit_list*, %struct.commit_list** %191, align 8
  store %struct.commit_list* %192, %struct.commit_list** %11, align 8
  br label %130

193:                                              ; preds = %130
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %182, %49, %21
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i8* @get_object_name(%struct.fsck_options*, i32*) #1

declare dso_local i32 @put_object_name(%struct.fsck_options*, %struct.object*, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @get_commit_tree(%struct.commit*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
