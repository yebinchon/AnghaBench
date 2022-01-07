; ModuleID = '/home/carl/AnghaBench/i3/src/extr_display_version.c_display_running_version.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_display_version.c_display_running_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\0AYour DISPLAY environment variable is not set.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Are you running i3 via SSH or on a virtual console?\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Try DISPLAY=:0 i3 --moreversion\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"I3_PID\00", align 1
@conn = common dso_local global i32 0, align 4
@conn_screen = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"\0ARunning version: < 4.2-200\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"(Getting version from running i3, press ctrl-c to abort\E2\80\A6)\00", align 1
@stdout = common dso_local global i32 0, align 4
@I3_IPC_MESSAGE_TYPE_GET_VERSION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"IPC: write()\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IPC: read()\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Got reply type %d, but expected %d (GET_VERSION)\00", align 1
@version_callbacks = common dso_local global i32 0, align 4
@yajl_status_ok = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [58 x i8] c"Could not parse my own reply. That's weird. reply is %.*s\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\0DRunning i3 version: %s (pid %s)\0A\00", align 1
@human_readable_version = common dso_local global i8* null, align 8
@loaded_config_file_name = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Loaded i3 config: %s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Cannot stat config file \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c" (Last modified: %s, %.f seconds ago)\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"/proc/%d/exe\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"readlink(%s)\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"The i3 binary you just called: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"/proc/%s/exe\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"(deleted)\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"RUNNING BINARY DIFFERENT FROM BINARY ON DISK!\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"/proc/%s/cmdline\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"read(%s)\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"The i3 binary you are running: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_running_version() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = call i32* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %0
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %0
  %29 = load i32, i32* @conn, align 4
  %30 = load i32, i32* @conn_screen, align 4
  %31 = call i8* @root_atom_contents(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  store i8* %31, i8** %1, align 8
  %32 = load i8*, i8** %1, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @EXIT_SUCCESS, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fflush(i32 %40)
  %42 = call i32 @ipc_connect(i32* null)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i64, i64* @I3_IPC_MESSAGE_TYPE_GET_VERSION, align 8
  %45 = call i32 @ipc_send_message(i32 %43, i32 0, i64 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 (i32, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @ipc_recv_message(i32 %51, i64* %4, i64* %3, i8** %5)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 (i32, i8*, ...) @err(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = call i32 @exit(i32 %61) #3
  unreachable

63:                                               ; preds = %50
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @I3_IPC_MESSAGE_TYPE_GET_VERSION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @I3_IPC_MESSAGE_TYPE_GET_VERSION, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @errx(i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %70, i8* %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = call i32 @yajl_alloc(i32* @version_callbacks, i32* null, i32* null)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %3, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @yajl_parse(i32 %76, i8* %77, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @yajl_status_ok, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = load i64, i64* %3, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @errx(i32 %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %84, %74
  %91 = load i8*, i8** @human_readable_version, align 8
  %92 = load i8*, i8** %1, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %91, i8* %92)
  %94 = load i8*, i8** @loaded_config_file_name, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %119

96:                                               ; preds = %90
  %97 = load i8*, i8** @loaded_config_file_name, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %97)
  %99 = load i8*, i8** @loaded_config_file_name, align 8
  %100 = call i32 @stat(i8* %99, %struct.stat* %9)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %104 = load i8*, i8** @loaded_config_file_name, align 8
  %105 = call i32 @ELOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %104)
  br label %118

106:                                              ; preds = %96
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %109 = call i32 @localtime(i32* %108)
  %110 = call i32 @strftime(i8* %107, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %109)
  %111 = call i32 @time(i32* %10)
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %113 = load i32, i32* %10, align 4
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call double @difftime(i32 %113, i32 %115)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i8* %112, double %116)
  br label %118

118:                                              ; preds = %106, %102
  br label %119

119:                                              ; preds = %118, %90
  store i64 1024, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i8* @smalloc(i64 %120)
  store i8* %121, i8** %15, align 8
  %122 = call i8* (...) @getpid()
  %123 = call i32 @sasprintf(i8** %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %132, %119
  %125 = load i8*, i8** %14, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @readlink(i8* %125, i8* %126, i64 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i64, i64* %12, align 8
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i64, i64* %12, align 8
  %134 = mul i64 %133, 2
  store i64 %134, i64* %12, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i8* @srealloc(i8* %135, i64 %136)
  store i8* %137, i8** %15, align 8
  br label %124

138:                                              ; preds = %124
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 (i32, i8*, ...) @err(i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i8*, i8** %15, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 0, i8* %149, align 1
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i8* %151)
  %153 = load i8*, i8** %14, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i8*, i8** %1, align 8
  %156 = call i32 @sasprintf(i8** %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %165, %145
  %158 = load i8*, i8** %14, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @readlink(i8* %158, i8* %159, i64 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i64, i64* %12, align 8
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load i64, i64* %12, align 8
  %167 = mul i64 %166, 2
  store i64 %167, i64* %12, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i64, i64* %12, align 8
  %170 = call i8* @srealloc(i8* %168, i64 %169)
  store i8* %170, i8** %15, align 8
  br label %157

171:                                              ; preds = %157
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* @EXIT_FAILURE, align 4
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 (i32, i8*, ...) @err(i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i8*, i8** %15, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %15, align 8
  %184 = call i32* @strstr(i8* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %178
  %189 = load i8*, i8** %14, align 8
  %190 = call i32 @free(i8* %189)
  %191 = load i8*, i8** %1, align 8
  %192 = call i32 @sasprintf(i8** %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* %191)
  %193 = load i8*, i8** %14, align 8
  %194 = load i32, i32* @O_RDONLY, align 4
  %195 = call i32 @open(i8* %193, i32 %194)
  store i32 %195, i32* %16, align 4
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %201

197:                                              ; preds = %188
  %198 = load i32, i32* @EXIT_FAILURE, align 4
  %199 = load i8*, i8** %14, align 8
  %200 = call i32 (i32, i8*, ...) @err(i32 %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %197, %188
  %202 = load i32, i32* %16, align 4
  %203 = load i8*, i8** %15, align 8
  %204 = call i32 @read(i32 %202, i8* %203, i32 8)
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load i32, i32* @EXIT_FAILURE, align 4
  %208 = load i8*, i8** %14, align 8
  %209 = call i32 (i32, i8*, ...) @err(i32 %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @close(i32 %211)
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %213)
  %215 = load i8*, i8** %14, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8*, i8** %15, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @yajl_free(i32 %219)
  %221 = load i8*, i8** %5, align 8
  %222 = call i32 @free(i8* %221)
  %223 = load i8*, i8** %1, align 8
  %224 = call i32 @free(i8* %223)
  ret void
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @root_atom_contents(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ipc_connect(i32*) #1

declare dso_local i32 @ipc_send_message(i32, i32, i64, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @ipc_recv_message(i32, i64*, i64*, i8**) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

declare dso_local i32 @yajl_alloc(i32*, i32*, i32*) #1

declare dso_local i64 @yajl_parse(i32, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local double @difftime(i32, i32) #1

declare dso_local i8* @smalloc(i64) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*) #1

declare dso_local i8* @getpid(...) #1

declare dso_local i32 @readlink(i8*, i8*, i64) #1

declare dso_local i8* @srealloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @yajl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
