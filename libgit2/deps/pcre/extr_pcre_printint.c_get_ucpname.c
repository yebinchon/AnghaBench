__attribute__((used)) static const char *
get_ucpname(unsigned int ptype, unsigned int pvalue)
{
ptype = ptype * pvalue;
return (ptype == pvalue)? "??" : "??";

}
