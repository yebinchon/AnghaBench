; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_config_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_config_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"fetch.fsck.skiplist\00", align 1
@fsck_msg_types = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%cskiplist=%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"fetch.fsck.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%c%s=%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Skipping unknown msg id '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @fetch_pack_config_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_pack_config_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @git_config_pathname(i8** %8, i8* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %55

18:                                               ; preds = %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fsck_msg_types, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 44, i32 61
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (%struct.TYPE_3__*, i8*, i8, i8*, ...) @strbuf_addf(%struct.TYPE_3__* @fsck_msg_types, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %23, i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @free(i8* %26)
  store i32 0, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @skip_prefix(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @is_valid_msg_type(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fsck_msg_types, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 44, i32 61
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (%struct.TYPE_3__*, i8*, i8, i8*, ...) @strbuf_addf(%struct.TYPE_3__* @fsck_msg_types, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8 signext %42, i8* %43, i8* %44)
  br label %49

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %37
  store i32 0, i32* %4, align 4
  br label %55

50:                                               ; preds = %28
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @git_default_config(i8* %51, i8* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %49, %18, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @git_config_pathname(i8**, i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_3__*, i8*, i8 signext, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @is_valid_msg_type(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
