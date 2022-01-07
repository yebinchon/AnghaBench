; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mount.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mount*)* }
%struct.mount = type { i8*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.stat = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"meta.db\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"error opening database: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"change_prefix\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_DETERMINISTIC = common dso_local global i32 0, align 4
@sqlite_func_change_prefix = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"pragma journal_mode=wal\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"pragma foreign_keys=true\00", align 1
@realfs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"stat database\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"select db_inode from meta\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"update meta set db_inode = ?\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"delete from stats where not exists (select 1 from paths where inode = stats.inode)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"select inode from paths where path = ?\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"select inode, stat from stats natural join paths where path = ?\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"insert into stats (stat) values (?)\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"insert or replace into paths values (?, last_insert_rowid())\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"select stat from stats where inode = ?\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"update stats set stat = ? where inode = ?\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"insert or replace into paths (path, inode) values (?, ?)\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"delete from paths where path = ?\00", align 1
@.str.22 = private unnamed_addr constant [104 x i8] c"update or replace paths set path = change_prefix(path, ?, ?) where (path >= ? and path < ?) or path = ?\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"select path from paths where inode = ?\00", align 1
@.str.24 = private unnamed_addr constant [97 x i8] c"delete from stats where inode = ? and not exists (select 1 from paths where inode = stats.inode)\00", align 1
@SQLITE_TRACE_STMT = common dso_local global i32 0, align 4
@trace_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @fakefs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcpy(i8* %18, i8* %21)
  %23 = call i8* @strrchr(i8* %18, i8 signext 47)
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 16, i1 false)
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* %18, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = call i32 (...) @errno_map()
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %42 = call i32 @read(i32 %40, i8* %41, i32 16)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @close(i32 %43)
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @_EINVAL, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

50:                                               ; preds = %39
  %51 = load %struct.mount*, %struct.mount** %3, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 4
  %53 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %54 = call i32 @sqlite3_open_v2(i8* %18, i32* %52, i32 %53, i32* null)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.mount*, %struct.mount** %3, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sqlite3_errmsg(i32 %61)
  %63 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.mount*, %struct.mount** %3, align 8
  %65 = getelementptr inbounds %struct.mount, %struct.mount* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sqlite3_close(i32 %66)
  %68 = load i32, i32* @_EINVAL, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

69:                                               ; preds = %50
  %70 = load %struct.mount*, %struct.mount** %3, align 8
  %71 = getelementptr inbounds %struct.mount, %struct.mount* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sqlite3_busy_timeout(i32 %72, i32 1000)
  %74 = load %struct.mount*, %struct.mount** %3, align 8
  %75 = getelementptr inbounds %struct.mount, %struct.mount* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SQLITE_UTF8, align 4
  %78 = load i32, i32* @SQLITE_DETERMINISTIC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @sqlite_func_change_prefix, align 4
  %81 = call i32 @sqlite3_create_function(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 3, i32 %79, i32* null, i32 %80, i32* null, i32* null)
  %82 = load %struct.mount*, %struct.mount** %3, align 8
  %83 = call i32 @db_check_error(%struct.mount* %82)
  %84 = load %struct.mount*, %struct.mount** %3, align 8
  %85 = call i8* @db_prepare(%struct.mount* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %11, align 8
  %87 = load %struct.mount*, %struct.mount** %3, align 8
  %88 = call i32 @db_check_error(%struct.mount* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i64 @sqlite3_step(i32* %89)
  %91 = load %struct.mount*, %struct.mount** %3, align 8
  %92 = call i32 @db_check_error(%struct.mount* %91)
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @sqlite3_finalize(i32* %93)
  %95 = load %struct.mount*, %struct.mount** %3, align 8
  %96 = call i8* @db_prepare(%struct.mount* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %97 = bitcast i8* %96 to i32*
  store i32* %97, i32** %11, align 8
  %98 = load %struct.mount*, %struct.mount** %3, align 8
  %99 = call i32 @db_check_error(%struct.mount* %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i64 @sqlite3_step(i32* %100)
  %102 = load %struct.mount*, %struct.mount** %3, align 8
  %103 = call i32 @db_check_error(%struct.mount* %102)
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @sqlite3_finalize(i32* %104)
  %106 = load i32 (%struct.mount*)*, i32 (%struct.mount*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @realfs, i32 0, i32 0), align 8
  %107 = load %struct.mount*, %struct.mount** %3, align 8
  %108 = call i32 %106(%struct.mount* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %69
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

113:                                              ; preds = %69
  %114 = load %struct.mount*, %struct.mount** %3, align 8
  %115 = call i32 @fakefs_migrate(%struct.mount* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

120:                                              ; preds = %113
  %121 = call i64 @stat(i8* %18, %struct.stat* %12)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @ERRNO_DIE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %13, align 8
  %128 = load %struct.mount*, %struct.mount** %3, align 8
  %129 = call i8* @db_prepare(%struct.mount* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %11, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i64 @sqlite3_step(i32* %131)
  %133 = load i64, i64* @SQLITE_ROW, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %125
  %136 = load i32*, i32** %11, align 8
  %137 = call i64 @sqlite3_column_int64(i32* %136, i32 0)
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @sqlite3_finalize(i32* %141)
  store i32* null, i32** %11, align 8
  %143 = load %struct.mount*, %struct.mount** %3, align 8
  %144 = call i32 @fakefs_rebuild(%struct.mount* %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load %struct.mount*, %struct.mount** %3, align 8
  %149 = getelementptr inbounds %struct.mount, %struct.mount* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @close(i32 %150)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %125
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @sqlite3_finalize(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.mount*, %struct.mount** %3, align 8
  %163 = call i8* @db_prepare(%struct.mount* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %164 = bitcast i8* %163 to i32*
  store i32* %164, i32** %11, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load i64, i64* %13, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @sqlite3_bind_int64(i32* %165, i32 1, i32 %167)
  %169 = load %struct.mount*, %struct.mount** %3, align 8
  %170 = call i32 @db_check_error(%struct.mount* %169)
  %171 = load i32*, i32** %11, align 8
  %172 = call i64 @sqlite3_step(i32* %171)
  %173 = load %struct.mount*, %struct.mount** %3, align 8
  %174 = call i32 @db_check_error(%struct.mount* %173)
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @sqlite3_finalize(i32* %175)
  %177 = load %struct.mount*, %struct.mount** %3, align 8
  %178 = call i8* @db_prepare(%struct.mount* %177, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i64 0, i64 0))
  %179 = bitcast i8* %178 to i32*
  store i32* %179, i32** %11, align 8
  %180 = load %struct.mount*, %struct.mount** %3, align 8
  %181 = call i32 @db_check_error(%struct.mount* %180)
  %182 = load i32*, i32** %11, align 8
  %183 = call i64 @sqlite3_step(i32* %182)
  %184 = load %struct.mount*, %struct.mount** %3, align 8
  %185 = call i32 @db_check_error(%struct.mount* %184)
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @sqlite3_finalize(i32* %186)
  %188 = load %struct.mount*, %struct.mount** %3, align 8
  %189 = getelementptr inbounds %struct.mount, %struct.mount* %188, i32 0, i32 3
  %190 = call i32 @lock_init(i32* %189)
  %191 = load %struct.mount*, %struct.mount** %3, align 8
  %192 = call i8* @db_prepare(%struct.mount* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %193 = load %struct.mount*, %struct.mount** %3, align 8
  %194 = getelementptr inbounds %struct.mount, %struct.mount* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 13
  store i8* %192, i8** %195, align 8
  %196 = load %struct.mount*, %struct.mount** %3, align 8
  %197 = call i8* @db_prepare(%struct.mount* %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %198 = load %struct.mount*, %struct.mount** %3, align 8
  %199 = getelementptr inbounds %struct.mount, %struct.mount* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 12
  store i8* %197, i8** %200, align 8
  %201 = load %struct.mount*, %struct.mount** %3, align 8
  %202 = call i8* @db_prepare(%struct.mount* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %203 = load %struct.mount*, %struct.mount** %3, align 8
  %204 = getelementptr inbounds %struct.mount, %struct.mount* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 11
  store i8* %202, i8** %205, align 8
  %206 = load %struct.mount*, %struct.mount** %3, align 8
  %207 = call i8* @db_prepare(%struct.mount* %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %208 = load %struct.mount*, %struct.mount** %3, align 8
  %209 = getelementptr inbounds %struct.mount, %struct.mount* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 10
  store i8* %207, i8** %210, align 8
  %211 = load %struct.mount*, %struct.mount** %3, align 8
  %212 = call i8* @db_prepare(%struct.mount* %211, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  %213 = load %struct.mount*, %struct.mount** %3, align 8
  %214 = getelementptr inbounds %struct.mount, %struct.mount* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 9
  store i8* %212, i8** %215, align 8
  %216 = load %struct.mount*, %struct.mount** %3, align 8
  %217 = call i8* @db_prepare(%struct.mount* %216, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %218 = load %struct.mount*, %struct.mount** %3, align 8
  %219 = getelementptr inbounds %struct.mount, %struct.mount* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 8
  store i8* %217, i8** %220, align 8
  %221 = load %struct.mount*, %struct.mount** %3, align 8
  %222 = call i8* @db_prepare(%struct.mount* %221, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0))
  %223 = load %struct.mount*, %struct.mount** %3, align 8
  %224 = getelementptr inbounds %struct.mount, %struct.mount* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 7
  store i8* %222, i8** %225, align 8
  %226 = load %struct.mount*, %struct.mount** %3, align 8
  %227 = call i8* @db_prepare(%struct.mount* %226, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %228 = load %struct.mount*, %struct.mount** %3, align 8
  %229 = getelementptr inbounds %struct.mount, %struct.mount* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 6
  store i8* %227, i8** %230, align 8
  %231 = load %struct.mount*, %struct.mount** %3, align 8
  %232 = call i8* @db_prepare(%struct.mount* %231, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  %233 = load %struct.mount*, %struct.mount** %3, align 8
  %234 = getelementptr inbounds %struct.mount, %struct.mount* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 5
  store i8* %232, i8** %235, align 8
  %236 = load %struct.mount*, %struct.mount** %3, align 8
  %237 = call i8* @db_prepare(%struct.mount* %236, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0))
  %238 = load %struct.mount*, %struct.mount** %3, align 8
  %239 = getelementptr inbounds %struct.mount, %struct.mount* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 4
  store i8* %237, i8** %240, align 8
  %241 = load %struct.mount*, %struct.mount** %3, align 8
  %242 = call i8* @db_prepare(%struct.mount* %241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %243 = load %struct.mount*, %struct.mount** %3, align 8
  %244 = getelementptr inbounds %struct.mount, %struct.mount* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  store i8* %242, i8** %245, align 8
  %246 = load %struct.mount*, %struct.mount** %3, align 8
  %247 = call i8* @db_prepare(%struct.mount* %246, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.22, i64 0, i64 0))
  %248 = load %struct.mount*, %struct.mount** %3, align 8
  %249 = getelementptr inbounds %struct.mount, %struct.mount* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 2
  store i8* %247, i8** %250, align 8
  %251 = load %struct.mount*, %struct.mount** %3, align 8
  %252 = call i8* @db_prepare(%struct.mount* %251, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  %253 = load %struct.mount*, %struct.mount** %3, align 8
  %254 = getelementptr inbounds %struct.mount, %struct.mount* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  store i8* %252, i8** %255, align 8
  %256 = load %struct.mount*, %struct.mount** %3, align 8
  %257 = call i8* @db_prepare(%struct.mount* %256, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.24, i64 0, i64 0))
  %258 = load %struct.mount*, %struct.mount** %3, align 8
  %259 = getelementptr inbounds %struct.mount, %struct.mount* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i8* %257, i8** %260, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %261

261:                                              ; preds = %161, %147, %118, %111, %58, %48, %37
  %262 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @errno_map(...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32*) #2

declare dso_local i32 @printk(i8*, i32) #2

declare dso_local i32 @sqlite3_errmsg(i32) #2

declare dso_local i32 @sqlite3_close(i32) #2

declare dso_local i32 @sqlite3_busy_timeout(i32, i32) #2

declare dso_local i32 @sqlite3_create_function(i32, i8*, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @db_check_error(%struct.mount*) #2

declare dso_local i8* @db_prepare(%struct.mount*, i8*) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @sqlite3_finalize(i32*) #2

declare dso_local i32 @fakefs_migrate(%struct.mount*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @ERRNO_DIE(i8*) #2

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #2

declare dso_local i32 @fakefs_rebuild(%struct.mount*) #2

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #2

declare dso_local i32 @lock_init(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
