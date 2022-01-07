; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_from_url.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_from_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @credential_from_url(%struct.credential* %0, i8* %1) #0 {
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.credential*, %struct.credential** %3, align 8
  %13 = call i32 @credential_clear(%struct.credential* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %163

19:                                               ; preds = %2
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 64)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strchrnul(i8* %26, i8 signext 47)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ule i8* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %19
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %9, align 8
  br label %82

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ule i8* %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @url_decode_mem(i8* %44, i32 %50)
  %52 = load %struct.credential*, %struct.credential** %3, align 8
  %53 = getelementptr inbounds %struct.credential, %struct.credential* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %9, align 8
  br label %81

56:                                               ; preds = %39
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @url_decode_mem(i8* %57, i32 %63)
  %65 = load %struct.credential*, %struct.credential** %3, align 8
  %66 = getelementptr inbounds %struct.credential, %struct.credential* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i8* @url_decode_mem(i8* %68, i32 %75)
  %77 = load %struct.credential*, %struct.credential** %3, align 8
  %78 = getelementptr inbounds %struct.credential, %struct.credential* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %56, %43
  br label %82

82:                                               ; preds = %81, %34
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @xmemdupz(i8* %90, i32 %96)
  %98 = load %struct.credential*, %struct.credential** %3, align 8
  %99 = getelementptr inbounds %struct.credential, %struct.credential* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %89, %82
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @url_decode_mem(i8* %108, i32 %114)
  %116 = load %struct.credential*, %struct.credential** %3, align 8
  %117 = getelementptr inbounds %struct.credential, %struct.credential* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %107, %100
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  br label %119

127:                                              ; preds = %119
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = call i8* @url_decode(i8* %132)
  %134 = load %struct.credential*, %struct.credential** %3, align 8
  %135 = getelementptr inbounds %struct.credential, %struct.credential* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.credential*, %struct.credential** %3, align 8
  %137 = getelementptr inbounds %struct.credential, %struct.credential* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.credential*, %struct.credential** %3, align 8
  %140 = getelementptr inbounds %struct.credential, %struct.credential* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  %145 = getelementptr inbounds i8, i8* %144, i64 -1
  store i8* %145, i8** %11, align 8
  br label %146

146:                                              ; preds = %159, %131
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.credential*, %struct.credential** %3, align 8
  %149 = getelementptr inbounds %struct.credential, %struct.credential* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ugt i8* %147, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 47
  br label %157

157:                                              ; preds = %152, %146
  %158 = phi i1 [ false, %146 ], [ %156, %152 ]
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 -1
  store i8* %161, i8** %11, align 8
  store i8 0, i8* %160, align 1
  br label %146

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %18, %162, %127
  ret void
}

declare dso_local i32 @credential_clear(%struct.credential*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @url_decode_mem(i8*, i32) #1

declare dso_local i32 @xmemdupz(i8*, i32) #1

declare dso_local i8* @url_decode(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
