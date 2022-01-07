; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_restore.c_read_restore.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_restore.c_read_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i8*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8**, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Restore file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Cannot read %s\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Unusually low number of arguments (argc) within restore file %s\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Unusually high number of arguments (argc) within restore file %s\00", align 1
@HCBUFSIZ_LARGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Changing current working directory to '%s'\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Directory '%s' needed to restore the session was not found.\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"Either create the directory, or update the directory within the .restore file.\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Restore files can be analyzed and modified with analyze_hc_restore.pl:\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"    https://github.com/philsmd/analyze_hc_restore\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"Directory must contain all files and folders from the original command line.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @read_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_restore(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @hc_fopen(i32* %7, i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %37)
  store i32 -1, i32* %2, align 4
  br label %223

39:                                               ; preds = %26
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @hc_fread(%struct.TYPE_13__* %43, i32 24, i32 1, i32* %7)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = call i32 @hc_fclose(i32* %7)
  store i32 -1, i32* %2, align 4
  br label %223

51:                                               ; preds = %39
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = call i32 @hc_fclose(i32* %7)
  store i32 -1, i32* %2, align 4
  br label %223

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 250
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = call i32 @hc_fclose(i32* %7)
  store i32 -1, i32* %2, align 4
  br label %223

71:                                               ; preds = %61
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @hccalloc(i32 %74, i32 8)
  %76 = inttoptr i64 %75 to i8**
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i8** %76, i8*** %78, align 8
  %79 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %80 = call i64 @hcmalloc(i64 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %120, %71
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %83, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %82
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32* @hc_fgets(i8* %90, i64 %92, i32* %7)
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = call i32 @hc_fclose(i32* %7)
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @hcfree(i8* %100)
  store i32 -1, i32* %2, align 4
  br label %223

102:                                              ; preds = %89
  %103 = load i8*, i8** %9, align 8
  %104 = call i64 @strlen(i8* %103)
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i8*, i8** %9, align 8
  %114 = call i8* @hcstrdup(i8* %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  br label %120

120:                                              ; preds = %112
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %82

123:                                              ; preds = %82
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @hcfree(i8* %124)
  %126 = call i32 @hc_fclose(i32* %7)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @hc_path_exist(i8* %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @errno, align 4
  %138 = call i32 @strerror(i32 %137)
  %139 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %136, i32 %138)
  store i32 -1, i32* %2, align 4
  br label %223

140:                                              ; preds = %123
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @hc_path_is_directory(i8* %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @errno, align 4
  %152 = call i32 @strerror(i32 %151)
  %153 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %150, i32 %152)
  store i32 -1, i32* %2, align 4
  br label %223

154:                                              ; preds = %140
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @strncmp(i8* %157, i32 %160, i32 8)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %222

163:                                              ; preds = %154
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %169, i8* null)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @chdir(i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %163
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_15__* %177, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %182, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0))
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %184, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %186, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %189 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %188, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0))
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = call i32 (%struct.TYPE_15__*, i8*, ...) @event_log_warning(%struct.TYPE_15__* %190, i8* null)
  store i32 -1, i32* %2, align 4
  br label %223

192:                                              ; preds = %163
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i8* @hcstrdup(i8* %195)
  store i8* %196, i8** %12, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @hcstrdup(i8* %199)
  store i8* %200, i8** %13, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = call i32 @folder_config_destroy(%struct.TYPE_15__* %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @folder_config_init(%struct.TYPE_15__* %203, i8* %204, i8* %205)
  store i32 %206, i32* %14, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @hcfree(i8* %207)
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 @hcfree(i8* %209)
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %214

213:                                              ; preds = %192
  store i32 -1, i32* %2, align 4
  br label %223

214:                                              ; preds = %192
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %216 = call i32 @pidfile_ctx_destroy(%struct.TYPE_15__* %215)
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %218 = call i32 @pidfile_ctx_init(%struct.TYPE_15__* %217)
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  store i32 -1, i32* %2, align 4
  br label %223

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %154
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %220, %213, %176, %146, %132, %95, %66, %56, %46, %33, %25
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_15__*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_fread(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i64 @hccalloc(i32, i32) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i32* @hc_fgets(i8*, i64, i32*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @hcstrdup(i8*) #1

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @hc_path_is_directory(i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @folder_config_destroy(%struct.TYPE_15__*) #1

declare dso_local i32 @folder_config_init(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @pidfile_ctx_destroy(%struct.TYPE_15__*) #1

declare dso_local i32 @pidfile_ctx_init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
