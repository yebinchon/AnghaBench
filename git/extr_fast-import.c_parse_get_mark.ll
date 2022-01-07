; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_get_mark.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_get_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64 }
%struct.object_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Not a mark: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown mark: %s\00", align 1
@command_buf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_get_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_get_mark(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %7 = add nsw i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 58
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @parse_mark_ref_eol(i8* %19)
  %21 = call %struct.object_entry* @find_mark(i32 %20)
  store %struct.object_entry* %21, %struct.object_entry** %3, align 8
  %22 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %23 = icmp ne %struct.object_entry* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @command_buf, i32 0, i32 0), align 8
  %26 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = trunc i64 %8 to i32
  %29 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %30 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @oid_to_hex(i32* %31)
  %33 = call i32 @xsnprintf(i8* %10, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_hash_algo, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @cat_blob_write(i8* %10, i64 %37)
  %39 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local %struct.object_entry* @find_mark(i32) #2

declare dso_local i32 @parse_mark_ref_eol(i8*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @cat_blob_write(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
