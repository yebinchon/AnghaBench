; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_oid_parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_oid_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@__const.oid_parsing.hex = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"*Hex to Raw*\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0A*Raw to Hex*\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SHA hex string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @oid_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oid_parsing(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [41 x i8], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = bitcast [41 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.oid_parsing.hex, i32 0, i32 0), i64 41, i1 false)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds [41 x i8], [41 x i8]* %5, i64 0, i64 0
  %15 = call i32 @git_oid_fromstr(i32* %13, i8* %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %10, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_oid_fmt(i8* %10, i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_oid_fmt(i8* %10, i32* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %25 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %25)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #3

declare dso_local i32 @git_oid_fmt(i8*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
