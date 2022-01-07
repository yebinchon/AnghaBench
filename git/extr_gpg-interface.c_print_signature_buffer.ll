; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_print_signature_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_print_signature_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature_check = type { i8*, i8*, i8* }

@GPG_VERIFY_RAW = common dso_local global i32 0, align 4
@GPG_VERIFY_VERBOSE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_signature_buffer(%struct.signature_check* %0, i32 %1) #0 {
  %3 = alloca %struct.signature_check*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.signature_check* %0, %struct.signature_check** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GPG_VERIFY_RAW, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.signature_check*, %struct.signature_check** %3, align 8
  %12 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.signature_check*, %struct.signature_check** %3, align 8
  %16 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i8* [ %13, %10 ], [ %17, %14 ]
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GPG_VERIFY_VERBOSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.signature_check*, %struct.signature_check** %3, align 8
  %26 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.signature_check*, %struct.signature_check** %3, align 8
  %31 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24, %18
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fputs(i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
