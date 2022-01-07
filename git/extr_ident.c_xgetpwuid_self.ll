; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_xgetpwuid_self.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_xgetpwuid_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8* }

@errno = common dso_local global i64 0, align 8
@xgetpwuid_self.fallback = internal global %struct.passwd zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i32*)* @xgetpwuid_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @xgetpwuid_self(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* @errno, align 8
  %4 = call i32 (...) @getuid()
  %5 = call %struct.passwd* @getpwuid(i32 %4)
  store %struct.passwd* %5, %struct.passwd** %3, align 8
  %6 = load %struct.passwd*, %struct.passwd** %3, align 8
  %7 = icmp ne %struct.passwd* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @xgetpwuid_self.fallback, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @xgetpwuid_self.fallback, i32 0, i32 1), align 8
  store %struct.passwd* @xgetpwuid_self.fallback, %struct.passwd** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %15
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
