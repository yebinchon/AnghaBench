; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_copy_gecos.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_copy_gecos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32* }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, %struct.strbuf*)* @copy_gecos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_gecos(%struct.passwd* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %7 = load %struct.passwd*, %struct.passwd** %3, align 8
  %8 = call i8* @get_gecos(%struct.passwd* %7)
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 44
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %49

21:                                               ; preds = %19
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 38
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @strbuf_addch(%struct.strbuf* %28, i32 %29)
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = load %struct.passwd*, %struct.passwd** %3, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @toupper(i32 %36) #3
  %38 = call i32 @strbuf_addch(%struct.strbuf* %32, i32 %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %40 = load %struct.passwd*, %struct.passwd** %3, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %39, i32* %43)
  br label %45

45:                                               ; preds = %31, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  br label %9

49:                                               ; preds = %19
  ret void
}

declare dso_local i8* @get_gecos(%struct.passwd*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
