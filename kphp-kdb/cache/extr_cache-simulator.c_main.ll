; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i8*, i32, i32, i8* }
%struct.TYPE_3__ = type { i32 }

@binlog_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"D:F:O:R:S:T:Ua:b:c:dghl:u:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@simulation_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@print_unknown_size_uries = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@daemonize = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"cache_set_amortization_tables_initialization_string (\22%s\22) failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@CACHE_FEATURE_REPLAY_DELETE = common dso_local global i32 0, align 4
@cache_features_mask = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Init URLs size field\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@simulation_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cache_simulator_greedy_init_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Init cache using greedy strategy\00", align 1
@cache_simulator_replay_logevent = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"Simulation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @set_debug_handlers()
  store i32 1, i32* @binlog_disabled, align 4
  br label %10

10:                                               ; preds = %109, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %110

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %109 [
    i32 68, label %17
    i32 70, label %17
    i32 83, label %17
    i32 79, label %64
    i32 82, label %67
    i32 84, label %70
    i32 85, label %72
    i32 97, label %73
    i32 98, label %75
    i32 99, label %83
    i32 100, label %96
    i32 103, label %99
    i32 104, label %100
    i32 108, label %102
    i32 117, label %104
    i32 118, label %106
  ]

17:                                               ; preds = %15, %15, %15
  store i8 0, i8* %7, align 1
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %8, i8* %7)
  %20 = icmp sge i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = or i32 %24, 32
  switch i32 %25, label %38 [
    i32 107, label %26
    i32 109, label %29
    i32 103, label %32
    i32 116, label %35
  ]

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = shl i64 %27, 10
  store i64 %28, i64* %8, align 8
  br label %44

29:                                               ; preds = %17
  %30 = load i64, i64* %8, align 8
  %31 = shl i64 %30, 20
  store i64 %31, i64* %8, align 8
  br label %44

32:                                               ; preds = %17
  %33 = load i64, i64* %8, align 8
  %34 = shl i64 %33, 30
  store i64 %34, i64* %8, align 8
  br label %44

35:                                               ; preds = %17
  %36 = load i64, i64* %8, align 8
  %37 = shl i64 %36, 40
  store i64 %37, i64* %8, align 8
  br label %44

38:                                               ; preds = %17
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %38, %35, %32, %29, %26
  %45 = load i64, i64* %8, align 8
  %46 = icmp sge i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 68
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 0), align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 70
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 1), align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 83
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 2), align 8
  br label %63

63:                                               ; preds = %61, %58
  br label %109

64:                                               ; preds = %15
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i8* @atoi(i8* %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 6), align 8
  br label %109

67:                                               ; preds = %15
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 @atoll(i8* %68)
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 5), align 4
  br label %109

70:                                               ; preds = %15
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 3), align 8
  br label %109

72:                                               ; preds = %15
  store i32 1, i32* @print_unknown_size_uries, align 4
  br label %109

73:                                               ; preds = %15
  %74 = load i8*, i8** @optarg, align 8
  store i8* %74, i8** @binlogname, align 8
  br label %109

75:                                               ; preds = %15
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i8* @atoi(i8* %76)
  store i8* %77, i8** @backlog, align 8
  %78 = load i8*, i8** @backlog, align 8
  %79 = icmp ule i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8*, i8** @BACKLOG, align 8
  store i8* %81, i8** @backlog, align 8
  br label %82

82:                                               ; preds = %80, %75
  br label %109

83:                                               ; preds = %15
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* @maxconn, align 8
  %87 = load i64, i64* @maxconn, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* @maxconn, align 8
  %91 = load i64, i64* @MAX_CONNECTIONS, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %83
  %94 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %94, i64* @maxconn, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %109

96:                                               ; preds = %15
  %97 = load i32, i32* @daemonize, align 4
  %98 = xor i32 %97, 1
  store i32 %98, i32* @daemonize, align 4
  br label %109

99:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 4), align 8
  br label %109

100:                                              ; preds = %15
  %101 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %196

102:                                              ; preds = %15
  %103 = load i8*, i8** @optarg, align 8
  store i8* %103, i8** @logname, align 8
  br label %109

104:                                              ; preds = %15
  %105 = load i8*, i8** @optarg, align 8
  store i8* %105, i8** @username, align 8
  br label %109

106:                                              ; preds = %15
  %107 = load i32, i32* @verbosity, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @verbosity, align 4
  br label %109

109:                                              ; preds = %15, %106, %104, %102, %99, %96, %95, %82, %73, %72, %70, %67, %64, %63
  br label %10

110:                                              ; preds = %10
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @optind, align 4
  %113 = add nsw i32 %112, 1
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %196

117:                                              ; preds = %110
  %118 = load i64, i64* @maxconn, align 8
  %119 = add nsw i64 %118, 16
  %120 = call i64 @raise_file_rlimit(i64 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i64, i64* @maxconn, align 8
  %124 = add nsw i64 %123, 16
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %117
  %129 = call i32 @aes_load_pwd_file(i32 0)
  %130 = load i8*, i8** @username, align 8
  %131 = call i64 @change_user(i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i8*, i8** @username, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i8*, i8** @username, align 8
  br label %139

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i8* [ %137, %136 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %138 ]
  %141 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  %142 = call i32 @exit(i32 1) #3
  unreachable

143:                                              ; preds = %128
  %144 = call i32 (...) @init_dyn_data()
  %145 = call i32 @cache_hashtable_init(i32 2000000)
  %146 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 3), align 8
  %147 = call i64 @cache_set_amortization_tables_initialization_string(i8* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 3), align 8
  %151 = call i32 @kprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %150)
  %152 = call i32 @exit(i32 1) #3
  unreachable

153:                                              ; preds = %143
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* @optind, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** @binlogname, align 8
  %160 = call i64 @engine_preload_filelist(i8* %158, i8* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %153
  %163 = load i8*, i8** @binlogname, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i8*, i8** @binlogname, align 8
  br label %173

167:                                              ; preds = %162
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* @optind, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  br label %173

173:                                              ; preds = %167, %165
  %174 = phi i8* [ %166, %165 ], [ %172, %167 ]
  %175 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %174)
  %176 = call i32 @exit(i32 1) #3
  unreachable

177:                                              ; preds = %153
  %178 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32, i32* @CACHE_FEATURE_REPLAY_DELETE, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* @cache_features_mask, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* @cache_features_mask, align 4
  %183 = call i32 @play_binlog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %184 = load i32, i32* @log_readto_pos, align 4
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 0), align 4
  %185 = call i32 (...) @cache_clear_all_acounters()
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 4), align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %177
  %189 = load i32, i32* @cache_simulator_greedy_init_replay_logevent, align 4
  store i32 %189, i32* @replay_logevent, align 4
  %190 = call i32 @play_binlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %177
  %192 = load i32, i32* @cache_simulator_replay_logevent, align 4
  store i32 %192, i32* @replay_logevent, align 4
  %193 = call i32 @play_binlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %194 = call i32 (...) @params()
  %195 = call i32 (...) @stats()
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %191, %115, %100
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @cache_hashtable_init(i32) #1

declare dso_local i64 @cache_set_amortization_tables_initialization_string(i8*) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @play_binlog(i8*) #1

declare dso_local i32 @cache_clear_all_acounters(...) #1

declare dso_local i32 @params(...) #1

declare dso_local i32 @stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
