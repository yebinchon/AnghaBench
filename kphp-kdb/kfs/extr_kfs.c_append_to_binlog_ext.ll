; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_append_to_binlog_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_append_to_binlog_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.kfs_file_info* }
%struct.kfs_file_info = type { i64, i64, i8*, i32, i64, %struct.kfs_replica* }
%struct.kfs_replica = type { i32, %struct.kfs_file_info** }

@kfs_binlog = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"cannot append to last read binlog file %s: newer binlog %s already exists\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot reopen binlog file %s in write mode: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot lock binlog file %s for writing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @append_to_binlog_ext(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfs_file_info*, align 8
  %9 = alloca %struct.kfs_replica*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.kfs_file_info*, %struct.kfs_file_info** %15, align 8
  %17 = icmp ne %struct.kfs_file_info* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load %struct.kfs_file_info*, %struct.kfs_file_info** %20, align 8
  %22 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load %struct.kfs_file_info*, %struct.kfs_file_info** %27, align 8
  %29 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @kfs_binlog, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load %struct.kfs_file_info*, %struct.kfs_file_info** %35, align 8
  %37 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %36, i32 0, i32 5
  %38 = load %struct.kfs_replica*, %struct.kfs_replica** %37, align 8
  %39 = icmp ne %struct.kfs_replica* %38, null
  br label %40

40:                                               ; preds = %33, %25, %18, %13, %2
  %41 = phi i1 [ false, %25 ], [ false, %18 ], [ false, %13 ], [ false, %2 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  store i32 -1, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load %struct.kfs_file_info*, %struct.kfs_file_info** %45, align 8
  store %struct.kfs_file_info* %46, %struct.kfs_file_info** %8, align 8
  %47 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %48 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %47, i32 0, i32 5
  %49 = load %struct.kfs_replica*, %struct.kfs_replica** %48, align 8
  store %struct.kfs_replica* %49, %struct.kfs_replica** %9, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %40
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @close(i32 %60)
  %62 = icmp sge i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  br label %67

67:                                               ; preds = %54, %40
  %68 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %69 = icmp ne %struct.kfs_replica* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %72 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %77 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %76, i32 0, i32 1
  %78 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %77, align 8
  %79 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %80 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %78, i64 %83
  %85 = load %struct.kfs_file_info*, %struct.kfs_file_info** %84, align 8
  %86 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %87 = icmp ne %struct.kfs_file_info* %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %75, %70
  %89 = load i32, i32* @stderr, align 4
  %90 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %91 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %94 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %93, i32 0, i32 1
  %95 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %94, align 8
  %96 = load %struct.kfs_replica*, %struct.kfs_replica** %9, align 8
  %97 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %95, i64 %100
  %102 = load %struct.kfs_file_info*, %struct.kfs_file_info** %101, align 8
  %103 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %92, i8* %104)
  store i64 -1, i64* %3, align 8
  br label %195

106:                                              ; preds = %75, %67
  %107 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %108 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @O_RDWR, align 4
  br label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @O_WRONLY, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @open(i8* %109, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @stderr, align 4
  %123 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %124 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  store i64 -1, i64* %3, align 8
  br label %195

127:                                              ; preds = %116
  %128 = load i32, i32* %7, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @dup2(i32 %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = call i64 @close(i32 %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %134, %130, %127
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @SEEK_END, align 4
  %148 = call i64 @lseek(i32 %146, i32 0, i32 %147)
  store i64 %148, i64* %10, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %151 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 4096
  %154 = sext i32 %153 to i64
  %155 = icmp sgt i64 %149, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %160 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %159, i32 0, i32 4
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %167 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %168, 4096
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @F_WRLCK, align 4
  %174 = call i64 @lock_whole_file(i32 %172, i32 %173)
  %175 = icmp sle i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %145
  %177 = load i32, i32* @stderr, align 4
  %178 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %179 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  store i64 -1, i64* %3, align 8
  br label %195

182:                                              ; preds = %145
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 -1, i32* %184, align 4
  %185 = load %struct.kfs_file_info*, %struct.kfs_file_info** %8, align 8
  %186 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = add nsw i64 %187, %188
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = sub nsw i64 %189, %193
  store i64 %194, i64* %3, align 8
  br label %195

195:                                              ; preds = %182, %176, %121, %88
  %196 = load i64, i64* %3, align 8
  ret i64 %196
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
