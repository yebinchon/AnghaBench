; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_inode_read_stat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_inode_read_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ish_stat = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"inode_read_stat(%llu): missing inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i64, %struct.ish_stat*)* @inode_read_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_read_stat(%struct.mount* %0, i64 %1, %struct.ish_stat* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ish_stat*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ish_stat* %2, %struct.ish_stat** %6, align 8
  %7 = load %struct.mount*, %struct.mount** %4, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @sqlite3_bind_int64(i32 %10, i32 1, i64 %11)
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @db_exec(%struct.mount* %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.ish_stat*, %struct.ish_stat** %6, align 8
  %25 = load %struct.mount*, %struct.mount** %4, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sqlite3_column_blob(i32 %28, i32 0)
  %30 = inttoptr i64 %29 to %struct.ish_stat*
  %31 = bitcast %struct.ish_stat* %24 to i8*
  %32 = bitcast %struct.ish_stat* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.mount*, %struct.mount** %4, align 8
  %34 = load %struct.mount*, %struct.mount** %4, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @db_reset(%struct.mount* %33, i32 %37)
  ret void
}

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i64) #1

declare dso_local i32 @db_exec(%struct.mount*, i32) #1

declare dso_local i32 @die(i8*, i64) #1

declare dso_local i64 @sqlite3_column_blob(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @db_reset(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
