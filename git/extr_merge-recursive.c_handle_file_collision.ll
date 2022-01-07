; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_file_collision.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_file_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diff_filespec = type { i8*, i64, i32 }
%struct.merge_file_info = type { i32, %struct.diff_filespec }

@.str = private unnamed_addr constant [34 x i8] c"Refusing to lose dirty file at %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"merged\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Refusing to lose untracked file at %s, even though it's in the way.\00", align 1
@null_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, i8*, i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*)* @handle_file_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_file_collision(%struct.merge_options* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.diff_filespec* %6, %struct.diff_filespec* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.merge_options*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.diff_filespec*, align 8
  %17 = alloca %struct.diff_filespec*, align 8
  %18 = alloca %struct.merge_file_info, align 8
  %19 = alloca %struct.diff_filespec, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.diff_filespec* %6, %struct.diff_filespec** %16, align 8
  store %struct.diff_filespec* %7, %struct.diff_filespec** %17, align 8
  store i8* null, i8** %20, align 8
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %21, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %25 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %8
  %29 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %37 = call i32 @handle_file_collision(%struct.merge_options* %29, i8* %30, i8* %31, i8* %32, i8* %33, i8* %34, %struct.diff_filespec* %35, %struct.diff_filespec* %36)
  store i32 %37, i32* %9, align 4
  br label %234

38:                                               ; preds = %8
  %39 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %40 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %38
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %100

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @update_file(%struct.merge_options* %55, i32 1, %struct.diff_filespec* %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  br label %234

61:                                               ; preds = %54
  br label %70

62:                                               ; preds = %51
  %63 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @update_file(%struct.merge_options* %63, i32 1, %struct.diff_filespec* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %9, align 4
  br label %234

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %75 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @update_file(%struct.merge_options* %74, i32 1, %struct.diff_filespec* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 -1, i32* %9, align 4
  br label %234

80:                                               ; preds = %73
  br label %89

81:                                               ; preds = %70
  %82 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %83 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i64 @update_file(%struct.merge_options* %82, i32 1, %struct.diff_filespec* %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 -1, i32* %9, align 4
  br label %234

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @remove_file(%struct.merge_options* %96, i32 1, i8* %97, i32 0)
  br label %99

99:                                               ; preds = %95, %92, %89
  store i32 0, i32* %9, align 4
  br label %234

100:                                              ; preds = %48, %38
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %107 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %103
  %113 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i64 @would_lose_untracked(%struct.merge_options* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %103
  %118 = phi i1 [ true, %103 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @remove_file(%struct.merge_options* %104, i32 1, i8* %105, i32 %119)
  br label %121

121:                                              ; preds = %117, %100
  %122 = load i8*, i8** %13, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %128 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call i64 @would_lose_untracked(%struct.merge_options* %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %133, %124
  %139 = phi i1 [ true, %124 ], [ %137, %133 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @remove_file(%struct.merge_options* %125, i32 1, i8* %126, i32 %140)
  br label %142

142:                                              ; preds = %138, %121
  %143 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i64 @was_dirty(%struct.merge_options* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %149 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @output(%struct.merge_options* %148, i32 1, i32 %149, i8* %150)
  %152 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i8* @unique_path(%struct.merge_options* %152, i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %154, i8** %20, align 8
  store i8* %154, i8** %21, align 8
  br label %173

155:                                              ; preds = %142
  %156 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = call i64 @would_lose_untracked(%struct.merge_options* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %162 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @output(%struct.merge_options* %161, i32 1, i32 %162, i8* %163)
  %165 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call i8* @unique_path(%struct.merge_options* %165, i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %167, i8** %20, align 8
  store i8* %167, i8** %21, align 8
  br label %172

168:                                              ; preds = %155
  %169 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @remove_file(%struct.merge_options* %169, i32 0, i8* %170, i32 0)
  br label %172

172:                                              ; preds = %168, %160
  br label %173

173:                                              ; preds = %172, %147
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 0
  store i8* %174, i8** %175, align 8
  %176 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 2
  %177 = call i32 @oidcpy(i32* %176, i32* @null_oid)
  %178 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %180 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %181 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %186 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 2
  %191 = call i64 @merge_mode_and_contents(%struct.merge_options* %179, %struct.diff_filespec* %19, %struct.diff_filespec* %180, %struct.diff_filespec* %181, i8* %182, i8* %183, i8* %184, i32 %190, %struct.merge_file_info* %18)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %173
  store i32 -1, i32* %9, align 4
  br label %234

194:                                              ; preds = %173
  %195 = load i8*, i8** %20, align 8
  %196 = icmp ne i8* %195, null
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %18, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, %198
  store i32 %201, i32* %199, align 8
  %202 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %203 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %18, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %18, i32 0, i32 1
  %206 = load i8*, i8** %21, align 8
  %207 = call i64 @update_file(%struct.merge_options* %202, i32 %204, %struct.diff_filespec* %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  store i32 -1, i32* %9, align 4
  br label %234

210:                                              ; preds = %194
  %211 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %18, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %210
  %215 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %216 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %215, i32 0, i32 1
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %214
  %222 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %225 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  %226 = call i64 @update_stages(%struct.merge_options* %222, i8* %223, i32* null, %struct.diff_filespec* %224, %struct.diff_filespec* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %221
  store i32 -1, i32* %9, align 4
  br label %234

229:                                              ; preds = %221, %214, %210
  %230 = load i8*, i8** %20, align 8
  %231 = call i32 @free(i8* %230)
  %232 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %18, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %229, %228, %209, %193, %99, %87, %79, %68, %60, %28
  %235 = load i32, i32* %9, align 4
  ret i32 %235
}

declare dso_local i64 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i32 @remove_file(%struct.merge_options*, i32, i8*, i32) #1

declare dso_local i64 @would_lose_untracked(%struct.merge_options*, i8*) #1

declare dso_local i64 @was_dirty(%struct.merge_options*, i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i8*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @merge_mode_and_contents(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i8*, i32, %struct.merge_file_info*) #1

declare dso_local i64 @update_stages(%struct.merge_options*, i8*, i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
