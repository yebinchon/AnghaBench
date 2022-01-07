; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_populate_opts_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_populate_opts_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32, i32, i32, i64, i32*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"options.no-commit\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"options.edit\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"options.allow-empty\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"options.allow-empty-message\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"options.keep-redundant-commits\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"options.signoff\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"options.record-origin\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"options.allow-ff\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"options.mainline\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"options.strategy\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"options.gpg-sign\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"options.strategy-option\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"options.allow-rerere-auto\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i32 0, align 4
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"options.default-msg-cleanup\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"invalid key: %s\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"invalid value for %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @populate_opts_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_opts_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.replay_opts*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.replay_opts*
  store %struct.replay_opts* %11, %struct.replay_opts** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %197

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @git_config_bool_or_int(i8* %20, i8* %21, i32* %9)
  %23 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %24 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %23, i32 0, i32 16
  store i8* %22, i8** %24, align 8
  br label %196

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @git_config_bool_or_int(i8* %30, i8* %31, i32* %9)
  %33 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %34 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %33, i32 0, i32 15
  store i8* %32, i8** %34, align 8
  br label %195

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @git_config_bool_or_int(i8* %40, i8* %41, i32* %9)
  %43 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %44 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %43, i32 0, i32 14
  store i8* %42, i8** %44, align 8
  br label %194

45:                                               ; preds = %35
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @git_config_bool_or_int(i8* %50, i8* %51, i32* %9)
  %53 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %54 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %53, i32 0, i32 13
  store i8* %52, i8** %54, align 8
  br label %193

55:                                               ; preds = %45
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @git_config_bool_or_int(i8* %60, i8* %61, i32* %9)
  %63 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %64 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  br label %192

65:                                               ; preds = %55
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @git_config_bool_or_int(i8* %70, i8* %71, i32* %9)
  %73 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %74 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  br label %191

75:                                               ; preds = %65
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i8* @git_config_bool_or_int(i8* %80, i8* %81, i32* %9)
  %83 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %84 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  br label %190

85:                                               ; preds = %75
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @git_config_bool_or_int(i8* %90, i8* %91, i32* %9)
  %93 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %94 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %93, i32 0, i32 9
  store i8* %92, i8** %94, align 8
  br label %189

95:                                               ; preds = %85
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @git_config_int(i8* %100, i8* %101)
  %103 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %104 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  br label %188

105:                                              ; preds = %95
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %111 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %110, i32 0, i32 7
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @git_config_string_dup(i32* %111, i8* %112, i8* %113)
  br label %187

115:                                              ; preds = %105
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %121 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %120, i32 0, i32 6
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @git_config_string_dup(i32* %121, i8* %122, i8* %123)
  br label %186

125:                                              ; preds = %115
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %151, label %129

129:                                              ; preds = %125
  %130 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %131 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %134 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %138 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ALLOC_GROW(i32* %132, i64 %136, i32 %139)
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @xstrdup(i8* %141)
  %143 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %144 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %147 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %142, i32* %150, align 4
  br label %185

151:                                              ; preds = %125
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i8* @git_config_bool_or_int(i8* %156, i8* %157, i32* %9)
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  br label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %167 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %184

168:                                              ; preds = %151
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %174 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @get_cleanup_mode(i8* %175, i32 1)
  %177 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %178 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %183

179:                                              ; preds = %168
  %180 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 (i32, i8*, ...) @error(i32 %180, i8* %181)
  store i32 %182, i32* %4, align 4
  br label %206

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %164
  br label %185

185:                                              ; preds = %184, %129
  br label %186

186:                                              ; preds = %185, %119
  br label %187

187:                                              ; preds = %186, %109
  br label %188

188:                                              ; preds = %187, %99
  br label %189

189:                                              ; preds = %188, %89
  br label %190

190:                                              ; preds = %189, %79
  br label %191

191:                                              ; preds = %190, %69
  br label %192

192:                                              ; preds = %191, %59
  br label %193

193:                                              ; preds = %192, %49
  br label %194

194:                                              ; preds = %193, %39
  br label %195

195:                                              ; preds = %194, %29
  br label %196

196:                                              ; preds = %195, %19
  br label %197

197:                                              ; preds = %196, %14
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %202 = load i8*, i8** %5, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 (i32, i8*, ...) @error(i32 %201, i8* %202, i8* %203)
  store i32 %204, i32* %4, align 4
  br label %206

205:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %200, %179
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool_or_int(i8*, i8*, i32*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i32 @git_config_string_dup(i32*, i8*, i8*) #1

declare dso_local i32 @ALLOC_GROW(i32*, i64, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @get_cleanup_mode(i8*, i32) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
