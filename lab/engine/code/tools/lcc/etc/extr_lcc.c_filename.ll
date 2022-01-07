; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_filename.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename.stemp = internal global i8* null, align 8
@filename.itemp = internal global i8* null, align 8
@suffixes = common dso_local global i32* null, align 8
@cpp = common dso_local global i32 0, align 4
@plist = common dso_local global i32 0, align 4
@Eflag = common dso_local global i32 0, align 4
@av = common dso_local global i32 0, align 4
@Sflag = common dso_local global i32 0, align 4
@outfile = common dso_local global i8* null, align 8
@cflag = common dso_local global i32 0, align 4
@as = common dso_local global i32 0, align 4
@alist = common dso_local global i32 0, align 4
@llist = common dso_local global i32* null, align 8
@errcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @basename(i8* %11)
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32*, i32** @suffixes, align 8
  %16 = call i32 @suffix(i8* %14, i32* %15, i32 4)
  switch i32 %16, label %173 [
    i32 0, label %17
    i32 1, label %54
    i32 2, label %99
    i32 3, label %157
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @cpp, align 4
  %19 = load i32, i32* @plist, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @append(i8* %20, i32 0)
  %22 = call i32 @compose(i32 %18, i32 %19, i32 %21, i32 0)
  %23 = load i32, i32* @Eflag, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @av, align 4
  %27 = call i32 @callsys(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %192

28:                                               ; preds = %17
  %29 = load i8*, i8** @filename.itemp, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32*, i32** @suffixes, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @first(i32 %34)
  %36 = call i8* @tempname(i32 %35)
  store i8* %36, i8** @filename.itemp, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @cpp, align 4
  %39 = load i32, i32* @plist, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @append(i8* %40, i32 0)
  %42 = load i8*, i8** @filename.itemp, align 8
  %43 = call i32 @append(i8* %42, i32 0)
  %44 = call i32 @compose(i32 %38, i32 %39, i32 %41, i32 %43)
  %45 = load i32, i32* @av, align 4
  %46 = call i32 @callsys(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i8*, i8** @filename.itemp, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @filename(i8* %50, i8* %51)
  store i32 %52, i32* %3, align 4
  br label %200

53:                                               ; preds = %37
  br label %192

54:                                               ; preds = %13
  %55 = load i32, i32* @Eflag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %192

58:                                               ; preds = %54
  %59 = load i32, i32* @Sflag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** @outfile, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** @outfile, align 8
  br label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = load i32*, i32** @suffixes, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @first(i32 %71)
  %73 = call i8* @concat(i8* %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %65
  %75 = phi i8* [ %66, %65 ], [ %73, %67 ]
  %76 = call i32 @compile(i8* %62, i8* %75)
  store i32 %76, i32* %6, align 4
  br label %98

77:                                               ; preds = %58
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** @filename.stemp, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** @filename.stemp, align 8
  br label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** @suffixes, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @first(i32 %86)
  %88 = call i8* @tempname(i32 %87)
  store i8* %88, i8** @filename.stemp, align 8
  br label %89

89:                                               ; preds = %83, %81
  %90 = phi i8* [ %82, %81 ], [ %88, %83 ]
  %91 = call i32 @compile(i8* %78, i8* %90)
  store i32 %91, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** @filename.stemp, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @filename(i8* %94, i8* %95)
  store i32 %96, i32* %3, align 4
  br label %200

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %74
  br label %192

99:                                               ; preds = %13
  %100 = load i32, i32* @Eflag, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %192

103:                                              ; preds = %99
  %104 = load i32, i32* @Sflag, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %156, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @cflag, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** @outfile, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i8*, i8** @outfile, align 8
  store i8* %113, i8** %7, align 8
  br label %131

114:                                              ; preds = %109, %106
  %115 = load i32, i32* @cflag, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i8*, i8** %5, align 8
  %119 = load i32*, i32** @suffixes, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @first(i32 %121)
  %123 = call i8* @concat(i8* %118, i32 %122)
  store i8* %123, i8** %7, align 8
  br label %130

124:                                              ; preds = %114
  %125 = load i32*, i32** @suffixes, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @first(i32 %127)
  %129 = call i8* @tempname(i32 %128)
  store i8* %129, i8** %7, align 8
  br label %130

130:                                              ; preds = %124, %117
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32, i32* @as, align 4
  %133 = load i32, i32* @alist, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @append(i8* %134, i32 0)
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @append(i8* %136, i32 0)
  %138 = call i32 @compose(i32 %132, i32 %133, i32 %135, i32 %137)
  %139 = load i32, i32* @av, align 4
  %140 = call i32 @callsys(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = load i32*, i32** @llist, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @find(i8* %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %131
  %148 = load i8*, i8** %7, align 8
  %149 = load i32*, i32** @llist, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @append(i8* %148, i32 %151)
  %153 = load i32*, i32** @llist, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %147, %131
  br label %156

156:                                              ; preds = %155, %103
  br label %192

157:                                              ; preds = %13
  %158 = load i8*, i8** %4, align 8
  %159 = load i32*, i32** @llist, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @find(i8* %158, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %157
  %165 = load i8*, i8** %4, align 8
  %166 = load i32*, i32** @llist, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @append(i8* %165, i32 %168)
  %170 = load i32*, i32** @llist, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %164, %157
  br label %192

173:                                              ; preds = %13
  %174 = load i32, i32* @Eflag, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i32, i32* @cpp, align 4
  %178 = load i32, i32* @plist, align 4
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @append(i8* %179, i32 0)
  %181 = call i32 @compose(i32 %177, i32 %178, i32 %180, i32 0)
  %182 = load i32, i32* @av, align 4
  %183 = call i32 @callsys(i32 %182)
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %176, %173
  %185 = load i8*, i8** %4, align 8
  %186 = load i32*, i32** @llist, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @append(i8* %185, i32 %188)
  %190 = load i32*, i32** @llist, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %184, %172, %156, %102, %98, %57, %53, %25
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* @errcnt, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @errcnt, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %93, %49
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @suffix(i8*, i32*, i32) #1

declare dso_local i32 @compose(i32, i32, i32, i32) #1

declare dso_local i32 @append(i8*, i32) #1

declare dso_local i32 @callsys(i32) #1

declare dso_local i8* @tempname(i32) #1

declare dso_local i32 @first(i32) #1

declare dso_local i32 @compile(i8*, i8*) #1

declare dso_local i8* @concat(i8*, i32) #1

declare dso_local i32 @find(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
