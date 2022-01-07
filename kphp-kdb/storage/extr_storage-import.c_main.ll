; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"m:vu:Ip:g:V:TP:S\00", align 1
@use_old_secret = common dso_local global i32 0, align 4
@pmemcache_dump = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@volume_id = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@split_rem = common dso_local global i32 0, align 4
@split_modulo = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@dump_rows = common dso_local global i32 0, align 4
@row_prefix = common dso_local global i8* null, align 8
@MAX_GROUP_PATHS = common dso_local global i32 0, align 4
@GP = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"volume_id is not given\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"-m option is not given\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"split_modulo should divides 10000\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = call i32 (...) @set_debug_handlers()
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** @progname, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** @progname, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i8* [ %19, %16 ], [ %22, %20 ]
  store i8* %24, i8** @progname, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %88, %23
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %89

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %88 [
    i32 83, label %32
    i32 80, label %33
    i32 84, label %42
    i32 86, label %43
    i32 109, label %46
    i32 118, label %68
    i32 117, label %71
    i32 73, label %73
    i32 112, label %74
    i32 103, label %76
  ]

32:                                               ; preds = %30
  store i32 1, i32* @use_old_secret, align 4
  br label %88

33:                                               ; preds = %30
  %34 = load i64, i64* @pmemcache_dump, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @pmemcache_dump, align 8
  %38 = call i32 @fclose(i64 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @fopen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %41, i64* @pmemcache_dump, align 8
  br label %88

42:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %88

43:                                               ; preds = %30
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 (i8*, i8*, ...) @sscanf(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* @volume_id)
  br label %88

46:                                               ; preds = %30
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @split_rem, i32* @split_modulo)
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* @split_modulo, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i32, i32* @split_modulo, align 4
  %56 = icmp sle i32 %55, 1000
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @split_rem, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @split_rem, align 4
  %62 = load i32, i32* @split_modulo, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57, %54, %46
  %65 = phi i1 [ false, %57 ], [ false, %54 ], [ false, %46 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %88

68:                                               ; preds = %30
  %69 = load i32, i32* @verbosity, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @verbosity, align 4
  br label %88

71:                                               ; preds = %30
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** @username, align 8
  br label %88

73:                                               ; preds = %30
  store i32 1, i32* @dump_rows, align 4
  br label %88

74:                                               ; preds = %30
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** @row_prefix, align 8
  br label %88

76:                                               ; preds = %30
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @MAX_GROUP_PATHS, align 4
  %79 = icmp slt i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** @optarg, align 8
  %83 = load i8**, i8*** @GP, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  store i8* %82, i8** %87, align 8
  br label %88

88:                                               ; preds = %76, %30, %74, %73, %71, %68, %64, %43, %42, %39, %32
  br label %25

89:                                               ; preds = %25
  %90 = load i64, i64* @volume_id, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = call i32 (...) @usage()
  %94 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %89
  %97 = load i32, i32* @split_modulo, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = call i32 (...) @usage()
  %101 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %96
  %104 = load i32, i32* @split_modulo, align 4
  %105 = srem i32 10000, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %109 = call i32 @exit(i32 1) #3
  unreachable

110:                                              ; preds = %103
  %111 = load i8*, i8** @username, align 8
  %112 = call i64 @change_user(i8* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i8*, i8** @username, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i8*, i8** @username, align 8
  br label %120

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i8* [ %118, %117 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %119 ]
  %122 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  %123 = call i32 @exit(i32 1) #3
  unreachable

124:                                              ; preds = %110
  %125 = load i32, i32* @optind, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %137, %124
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @test_paths(i8* %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %126

140:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i8**, i8*** @GP, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @test_paths(i8* %150)
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %141

155:                                              ; preds = %141
  %156 = call i32 (...) @init_dyn_data()
  %157 = call i32 @aes_load_pwd_file(i32* null)
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 (...) @import_lev_start()
  br label %162

162:                                              ; preds = %160, %155
  %163 = load i32, i32* @optind, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %175, %162
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @import_paths(i8* %173, i32 1)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %164

178:                                              ; preds = %164
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %190, %178
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  %184 = load i8**, i8*** @GP, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @import_paths(i8* %188, i32 -1)
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %179

193:                                              ; preds = %179
  %194 = load i64, i64* @pmemcache_dump, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i64, i64* @pmemcache_dump, align 8
  %198 = call i32 @fclose(i64 %197)
  br label %199

199:                                              ; preds = %196, %193
  ret i32 0
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @test_paths(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @aes_load_pwd_file(i32*) #1

declare dso_local i32 @import_lev_start(...) #1

declare dso_local i32 @import_paths(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
