; ModuleID = '/home/carl/AnghaBench/git/extr_credential-store.c_rewrite_credential_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-store.c_rewrite_credential_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32 }
%struct.strbuf = type { i32 }

@credential_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to get credential storage lock\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to write credential store\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.credential*, %struct.strbuf*)* @rewrite_credential_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_credential_file(i8* %0, %struct.credential* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.credential*, align 8
  %6 = alloca %struct.strbuf*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.credential* %1, %struct.credential** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @hold_lock_file_for_update(i32* @credential_lock, i8* %7, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @die_errno(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  %13 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %14 = icmp ne %struct.strbuf* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = call i32 @print_line(%struct.strbuf* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.credential*, %struct.credential** %5, align 8
  %21 = call i32 @parse_credential_file(i8* %19, %struct.credential* %20, i32* null, i32 (%struct.strbuf*)* @print_line)
  %22 = call i64 @commit_lock_file(i32* @credential_lock)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @die_errno(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  ret void
}

declare dso_local i64 @hold_lock_file_for_update(i32*, i8*, i32) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @print_line(%struct.strbuf*) #1

declare dso_local i32 @parse_credential_file(i8*, %struct.credential*, i32*, i32 (%struct.strbuf*)*) #1

declare dso_local i64 @commit_lock_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
