; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"object %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tag %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tagger\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = trunc i64 %7 to i32
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_tag_target_id(i32* %11)
  %13 = call i32 @git_oid_tostr(i8* %9, i32 %10, i32 %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_tag_target_type(i32* %15)
  %17 = call i8* @git_object_type2string(i32 %16)
  %18 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @git_tag_name(i32* %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_tag_tagger(i32* %22)
  %24 = call i32 @print_signature(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @git_tag_message(i32* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i8* @git_tag_message(i32* %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #2

declare dso_local i32 @git_tag_target_id(i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @git_object_type2string(i32) #2

declare dso_local i32 @git_tag_target_type(i32*) #2

declare dso_local i8* @git_tag_name(i32*) #2

declare dso_local i32 @print_signature(i8*, i32) #2

declare dso_local i32 @git_tag_tagger(i32*) #2

declare dso_local i8* @git_tag_message(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
