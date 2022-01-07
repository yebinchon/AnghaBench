; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_dump_stream.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_dump_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"You can reproduce this with below command(s);\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" $ echo \00", align 1
@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" | %s -i -\0A\00", align 1
@prog = common dso_local global i8* null, align 8
@input_file = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"Or \0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" $ %s -s 0x%x,%lu\0A\00", align 1
@seed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*, %struct.insn*)* @dump_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_stream(i32* %0, i8* %1, i64 %2, i8* %3, %struct.insn* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.insn*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.insn* %4, %struct.insn** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.insn*, %struct.insn** %10, align 8
  %17 = call i32 @dump_insn(i32* %15, %struct.insn* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %35, %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @MAX_INSN_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** @prog, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @input_file, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** @prog, align 8
  %49 = load i32, i32* @seed, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %48, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_insn(i32*, %struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
